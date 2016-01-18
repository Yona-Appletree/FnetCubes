/**************************************************************************
* 
* Copyright 2011-2015 by Andrey Butok. FNET Community.
* Copyright 2008-2010 by Andrey Butok. Freescale Semiconductor, Inc.
*
***************************************************************************
*
*  Licensed under the Apache License, Version 2.0 (the "License"); you may
*  not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*  http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
*  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
**********************************************************************/ 
/*!
*
* @file fapp.c
*
* @author Andrey Butok
*
* @brief FNET Shell Demo implementation.
*
***************************************************************************/

#include "fapp.h"

#include "fapp_prv.h"

#if FAPP_CFG_SETGET_CMD
#include "fapp_setget.h"
#endif

#include "fapp_mem.h"

#if FAPP_CFG_DHCP_CMD && FNET_CFG_DHCP && FNET_CFG_IP4

#include "fapp_dhcp.h"

#endif

#if (FAPP_CFG_HTTP_CMD && FNET_CFG_HTTP)|| (FAPP_CFG_EXP_CMD && FNET_CFG_FS)

#include "fapp_http.h"
#include "fapp_fs.h"

#endif

#if FAPP_CFG_TFTP_CMD || FAPP_CFG_TFTPUP_CMD || FAPP_CFG_TFTPS_CMD

#include "fapp_tftp.h"

#endif

#if FAPP_CFG_TELNET_CMD && FNET_CFG_TELNET

#include "fapp_telnet.h"

#endif

#if FAPP_CFG_DNS_CMD && FNET_CFG_DNS && FNET_CFG_DNS_RESOLVER

#include "fapp_dns.h"

#endif 

#if FAPP_CFG_BENCH_CMD

#include "fapp_bench.h"

#endif

#if FNET_CFG_PING && (FAPP_CFG_PING_CMD || FAPP_CFG_PING6_CMD)

#include "fapp_ping.h"

#endif

#if FAPP_CFG_LLMNR_CMD

#include "fapp_llmnr.h"

#endif


/************************************************************************
*     Definitions.
*************************************************************************/
const fnet_char_t FAPP_DELIMITER_STR[] = "************************************************";
const fnet_char_t FAPP_CANCELLED_STR[] = "\nCancelled";
const fnet_char_t FAPP_TOCANCEL_STR[] = "Press [Ctr+C] to cancel.";

/* Error mesages */
const fnet_char_t FAPP_PARAM_ERR[] = "Error: Invalid paremeter \'%s\'";
static const fnet_char_t FAPP_NET_ERR[]   = "Error: Network Interface is not configurated!\n";
const fnet_char_t FAPP_INIT_ERR[]  = "Error: %s initialization is failed!";



const fnet_char_t FAPP_SHELL_INFO_FORMAT_S[]  = " %-16s : %s";
const fnet_char_t FAPP_SHELL_INFO_FORMAT_D[]  = " %-16s : %u";

const fnet_char_t FAPP_SHELL_INFO_ENABLED[]  = "enabled";
const fnet_char_t FAPP_SHELL_INFO_DISABLED[]  = "disabled";
const fnet_char_t FAPP_SHELL_CANCELED_CTRL_C[]  = "Canceled by [Ctrl+C]!";

/* Service release command */
const fnet_char_t FAPP_COMMAND_RELEASE [] = "release";

#define FAPP_GO_STR             "go 0x%08X"
#define FAPP_SAVE_STR           "Parameters saved"
#define FAPP_SAVE_FAILED_STR    "Parameters saving failed!"
#define FAPP_BOOT_STR           "Press any key to stop (%s): %3d"

#define FAPP_PARAMS_LOAD_STR    "\n\nParameters loaded from Flash.\n"

#define FAPP_DUP_IP_WARN        "\n%s: %s has IP address conflict with another system on the network!\n"

/************************************************************************
*     Function Prototypes
*************************************************************************/
static void fapp_init(void);
void fapp_shell_init(fnet_shell_desc_t desc);
#if FAPP_CFG_BOOTLOADER || FAPP_CFG_SETGET_CMD_BOOT
static void fapp_boot_mode_go(fnet_shell_desc_t desc);
static void fapp_boot_mode_script(fnet_shell_desc_t desc);
#endif
#if FAPP_CFG_GO_CMD || FAPP_CFG_BOOTLOADER || FAPP_CFG_SETGET_CMD_BOOT
static void fapp_go (fnet_shell_desc_t desc, fnet_uint32_t address);
#endif
#if FAPP_CFG_REINIT_CMD 
void fapp_reinit_cmd ( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv );
#endif
#if FAPP_CFG_DEBUG_CMD 
void fapp_debug_cmd ( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv );
#endif
static void fapp_boot(fnet_shell_desc_t desc);
#if FNET_CFG_IP4
static void fapp_dup_ip_handler( fnet_netif_desc_t netif );
#endif

#if FAPP_CFG_BIND_CMD && FNET_CFG_IP6
static void fapp_bind_cmd ( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv );
#endif
#if FAPP_CFG_INFO_CMD
static void fapp_info_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv );
#endif
#if FAPP_CFG_RESET_CMD || FAPP_CFG_REBOOT_CMD
static void fapp_reset_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv );
#endif
#if FAPP_CFG_SAVE_CMD && FNET_CFG_FLASH
static void fapp_save_cmd ( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv );
#endif
#if FAPP_CFG_STAT_CMD
static void fapp_stat_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv );
#endif
#if FAPP_CFG_UNBIND_CMD && FNET_CFG_IP6
static void fapp_unbind_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv );
#endif
#if FAPP_CFG_EXP_CMD && FNET_CFG_FS
static void fapp_exp_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv );
#endif
static void fapp_info_print( fnet_shell_desc_t desc );

/************************************************************************
*     The table of the main shell commands.
*************************************************************************/
const struct fnet_shell_command fapp_cmd_table [] =
{
    { "help",       0u, 0u, fapp_help_cmd,    "Display this help message", ""},
#if FAPP_CFG_SETGET_CMD
    { "set",        0u, 2u, fapp_set_cmd,     "Set parameter", "[<parameter> <value>]"},
    { "get",        0u, 1u, fapp_get_cmd,     "Get parameters", "[<parameter>]" },
#endif  
#if FAPP_CFG_BIND_CMD && FNET_CFG_IP6
    { "bind",       1u, 1u, fapp_bind_cmd,    "Bind IPv6 Address", "<IP6 address>"},
#endif
#if FAPP_CFG_UNBIND_CMD && FNET_CFG_IP6
    { "unbind",     1u, 1u, fapp_unbind_cmd,  "Unbind IPv6 Address", "<IP6 address>"},
#endif    
#if FAPP_CFG_INFO_CMD
    { "info",       0u, 0u, fapp_info_cmd,    "Show interface info", ""},
#endif
#if FAPP_CFG_STAT_CMD
    { "stat",       0u, 0u, fapp_stat_cmd,    "Show interface statistics", ""},
#endif
#if FAPP_CFG_DHCP_CMD && FNET_CFG_DHCP && FNET_CFG_IP4
    { "dhcp",       0u, 1u, fapp_dhcp_cmd,    "Start DHCP client", "[release]"},
#endif
#if FAPP_CFG_HTTP_CMD && FNET_CFG_HTTP
    { "http",       0u, 1u, fapp_http_cmd,    "Start HTTP Server", "[release]"},
#endif
#if FAPP_CFG_EXP_CMD && FNET_CFG_FS 
    { "exp",        0u, 1u, fapp_exp_cmd,     "File Explorer submenu...", ""},
#endif    
#if FAPP_CFG_TFTP_CMD
    { "tftp",       0u, 3u, fapp_tftp_cmd,    "TFTP firmware loader", "[<image name>[<server ip>[<type>]]]"},
#endif
#if FAPP_CFG_TFTPUP_CMD
    { "tftpup",     0u, 3u, fapp_tftp_cmd,    "TFTP firmware uploader", "[<image name>[<server ip>[<type>]]]"},
#endif  
#if FAPP_CFG_TFTPS_CMD  
    { "tftps",      0u, 1u, fapp_tftps_cmd,   "TFTP firmware server", "[release]"},
#endif
#if FAPP_CFG_TELNET_CMD && FNET_CFG_TELNET
    { "telnet",     0u, 1u, fapp_telnet_cmd,  "Start Telnet Server", "[release]"},
#endif 
#if FAPP_CFG_DNS_CMD && FNET_CFG_DNS && FNET_CFG_DNS_RESOLVER
    { "dns",        2u, 3u, fapp_dns_cmd,     "Resolve IPv4|6 address of <host name>", "<host name> 4|6 [<server ip>]"},
#endif 
#if FAPP_CFG_LLMNR_CMD && FNET_CFG_LLMNR
    { "llmnr",     0u, 1u, fapp_llmnr_cmd,    "Start LLMNR Server", "[release]"},
#endif 
#if FAPP_CFG_MEM_CMD    
    { "mem",        0u, 0u, fapp_mem_cmd,     "Show memory map", ""},
#endif  
#if FAPP_CFG_ERASE_CMD    
    { "erase",      1u, 2u, fapp_mem_erase_cmd,   "Erase flash memory", "all|[0x<erase address> <bytes>]"},
#endif 
#if FAPP_CFG_SAVE_CMD && FNET_CFG_FLASH      
    { "save",       0u, 0u, fapp_save_cmd,    "Save parameters to the FLASH", ""},
#endif 
#if FAPP_CFG_GO_CMD    
    { "go",         0u, 1u, fapp_go_cmd,      "Start application at address", "[0x<address>]"},
#endif 
#if FAPP_CFG_RESET_CMD    
    { "reset",      0u, 0u, fapp_reset_cmd,   "Reset the board", ""},
#endif    
#if FAPP_CFG_REBOOT_CMD /* Used only for IPv6 TAHI Testing.*/   
    { "reboot",     0u, 0u, fapp_reset_cmd,   "Reset the board", ""},
#endif  
#if FAPP_CFG_BENCH_CMD   
    { "benchrx",    0u, 2u, fapp_benchrx_cmd, "Receiver Benchmark", "[tcp|udp [multicast ip]"},
    { "benchtx",    1u, 5u, fapp_benchtx_cmd, "Transmitter Benchmark", "<remote ip>[tcp|udp[<message size>\r\n\t[<number of messages>[<number of iterations>]]]"},
#endif
#if FAPP_CFG_REINIT_CMD   /* Used to test FNET release/init only. */
    { "reinit",     0u, 0u, fapp_reinit_cmd,  "Reinit application", ""},
#endif
#if FNET_CFG_PING && FAPP_CFG_PING_CMD 
    { "ping",       1u, 14u, fapp_ping_cmd,   "Send ECHO requests", "[-c <count>][-i <seconds>]\n\r\t[-p <pattern>][-s <size>][-h <hoplimit/ttl>] <ip>"}, /* -s -n should be ignored.*/
#endif
#if FNET_CFG_PING && FAPP_CFG_PING6_CMD 
    { "ping6",      1u, 14u, fapp_ping_cmd,   "Send ECHO requests", "[-c <count>][-i <seconds>]\n\r\t[-p <pattern>][-s <size>][-h <hoplimit/ttl>] <ip>"}, /* -s -n should be ignored.*/
#endif

#if FAPP_CFG_DEBUG_CMD   /* Used for DEBUGING needs only. */
    { "d",          0u, 0u, fapp_debug_cmd,   "Print debug info.", ""},
#endif
    { 0,           0u, 0u, 0, 0, 0}
};

/* Shell command-line buffer.*/
static fnet_char_t fapp_cmd_line_buffer[FAPP_CFG_SHELL_MAX_LINE_LENGTH];

/************************************************************************
*     The main shell control data structure.
*************************************************************************/
static const struct fnet_shell fapp_shell =
{
    fapp_cmd_table,         /* cmd_table */
    FAPP_CFG_SHELL_PROMPT,  /* prompt_str */
    fapp_shell_init,        /* shell_init */
};

static fnet_shell_desc_t fapp_shell_desc = 0; /* Shell descriptor. */

#if FAPP_CFG_BOOTLOADER || FAPP_CFG_SETGET_CMD_BOOT

/* Boot-mode string matching. */
#define FAPP_PARAMS_BOOT_MODE_STOP_STR      "stop"   /* Stop at the shell prompt */
#define FAPP_PARAMS_BOOT_MODE_GO_STR        "go"     /* Boot from flash.*/
#define FAPP_PARAMS_BOOT_MODE_SCRIPT_STR    "script" /* Start boot-script.*/

/* Boot modes. */
static const struct boot_mode boot_modes[] =
{
    {FAPP_PARAMS_BOOT_MODE_STOP,    FAPP_PARAMS_BOOT_MODE_STOP_STR, 0},
    {FAPP_PARAMS_BOOT_MODE_GO,      FAPP_PARAMS_BOOT_MODE_GO_STR, fapp_boot_mode_go},
    {FAPP_PARAMS_BOOT_MODE_SCRIPT,  FAPP_PARAMS_BOOT_MODE_SCRIPT_STR, fapp_boot_mode_script}
};

#define BOOT_MODE_COUNT     (sizeof(boot_modes)/sizeof(struct boot_mode))
#define BOOT_MODE_DEFAULT   boot_modes[0]


/************************************************************************
* NAME: fapp_boot_mode_by_index
*
* DESCRIPTION:
************************************************************************/
const struct boot_mode *fapp_boot_mode_by_index (fapp_params_boot_mode_t index)
{
    const struct boot_mode *result = &BOOT_MODE_DEFAULT;
    fnet_index_t            i;

    for(i=0u; i< BOOT_MODE_COUNT; i++)
    {
        if( boot_modes[i].index == index )
        {
            result = &boot_modes[i];
            break;
        } 
    }
    
    return result;    
}

/************************************************************************
* NAME: fapp_boot_mode_by_name
*
* DESCRIPTION:
************************************************************************/
const struct boot_mode *fapp_boot_mode_by_name (fnet_char_t *name)
{
    const struct boot_mode *result = 0;
    fnet_index_t            i;

    for(i=0u; i< BOOT_MODE_COUNT; i++)
    {
        if(fnet_strcmp(boot_modes[i].name, name ) == 0)
        {
            result = &boot_modes[i];
            break;
        } 
    }
    
    return result;   
}

/************************************************************************
* NAME: fapp_boot_mode_go
*
* DESCRIPTION: 
************************************************************************/
static void fapp_boot_mode_go(fnet_shell_desc_t desc)
{
    fapp_go (desc, fapp_params_boot_config.go_address);
}

/************************************************************************
* NAME: fapp_boot_mode_script
*
* DESCRIPTION: 
************************************************************************/
static void fapp_boot_mode_script(fnet_shell_desc_t desc)
{
    fnet_shell_println(desc, "\n%s",fapp_params_boot_config.script);
    fnet_shell_script(desc, fapp_params_boot_config.script);
}
#endif /* FAPP_CFG_BOOTLOADER */

/************************************************************************
* NAME: fapp_boot
*
* DESCRIPTION: 
************************************************************************/
static void fapp_boot(fnet_shell_desc_t desc)
{
/* Bootloader. */
#if FAPP_CFG_BOOTLOADER  

    /* The bootloader wait some time for a key over a serial connection.*/
    /* The wait time is given by the boot_delay parameter.*/
    fnet_time_t delay;

    const struct boot_mode *mode;

    mode = fapp_boot_mode_by_index (fapp_params_boot_config.mode);    
        

    if(mode->handler)
    {
        delay = fapp_params_boot_config.delay;
        
        fnet_shell_printf(desc, FAPP_BOOT_STR, mode->name, delay);

        while(delay > 0u)
        {
            delay--;
            if( fnet_shell_getchar(desc) != FNET_ERR)
            {
                break;
            }
                
            fnet_timer_delay(FNET_TIMER_TICK_IN_SEC); /* 1 sec. delay. */
            fnet_shell_printf(desc, "\b\b\b\b %3d", delay);
        }
       
        fnet_shell_println(desc, "");
       
        if(delay == 0u)
        {
            /* Auto-start*/
            mode->handler(desc);
        }
    }
    else
#endif    
    {
        /* Default startup script. */
        #if FAPP_CFG_STARTUP_SCRIPT_ENABLED
            fnet_shell_println(desc, "Startup script: %s", FAPP_CFG_STARTUP_SCRIPT);
            fnet_shell_script(desc, FAPP_CFG_STARTUP_SCRIPT );
        #endif
    }
    
    FNET_COMP_UNUSED_ARG(desc);
}

/************************************************************************
* NAME: fapp_reset_cmd
*
* DESCRIPTION: Reset command reboots the system. 
************************************************************************/
#if FAPP_CFG_RESET_CMD || FAPP_CFG_REBOOT_CMD
static void fapp_reset_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv )
{
    FNET_COMP_UNUSED_ARG(desc);
    FNET_COMP_UNUSED_ARG(argc);
    FNET_COMP_UNUSED_ARG(argv);

    fnet_release(); /* Release FNET stack (it's optional).*/
    
    fnet_cpu_reset();
}
#endif

/************************************************************************
* NAME: fapp_debug_cmd
*
* DESCRIPTION: Print your DEBUG info. 
************************************************************************/
#if FAPP_CFG_DEBUG_CMD
void fapp_debug_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv )
{
    FNET_COMP_UNUSED_ARG(desc);
    FNET_COMP_UNUSED_ARG(argc);
    FNET_COMP_UNUSED_ARG(argv);

    /* Put here you debugging information.*/
#if 0
    fnet_fec_debug_mii_print_regs(fnet_netif_get_default());
#endif

#if 0
    {
        fnet_index_t    i = 0;
        fnet_ip6_addr_t addr_dns;
        fnet_uint8_t    ip_str[FNET_IP_ADDR_STR_SIZE]={0};
        
        while(fnet_netif_get_ip6_dns(fnet_netif_get_default(), i, &addr_dns ) == FNET_TRUE)
        {
            fnet_inet_ntop(AF_INET6, (fnet_uint8_t*)(&addr_dns), ip_str, sizeof(ip_str));
            fnet_shell_println(desc, "DNS[%d]=%s", i, ip_str);
            i++;
        }
    }
#endif

#if 0 /* Test ctacrypt library.*/
    extern void ctaocrypt_test(void);
    
    ctaocrypt_test();
#endif
}
#endif

/************************************************************************
* NAME: fapp_dup_ip_handler
*
* DESCRIPTION: IP address is duplicated.
************************************************************************/
#if FNET_CFG_IP4
static void fapp_dup_ip_handler( fnet_netif_desc_t netif )
{
    fnet_char_t     name[FNET_NETIF_NAMELEN];
    fnet_char_t     ip_str[FNET_IP4_ADDR_STR_SIZE];
    fnet_ip4_addr_t addr;
    
    fnet_netif_get_name( netif, name, sizeof(name) );
    addr = fnet_netif_get_ip4_addr( netif );
    fnet_inet_ntoa(*(struct in_addr *)( &addr), ip_str);

    fnet_printf(FAPP_DUP_IP_WARN, name, ip_str);
}
#endif /* FNET_CFG_IP4 */

/************************************************************************
* NAME: fapp_init
*
* DESCRIPTION: FNET Application initialization.
************************************************************************/
static void fapp_init(void)
{
    static fnet_uint8_t         stack_heap[FNET_CFG_HEAP_SIZE];
    struct fnet_init_params     init_params;
    struct fnet_shell_params    shell_params;

    /* Input parameters for FNET stack initialization */
    init_params.netheap_ptr = stack_heap;
    init_params.netheap_size = FNET_CFG_HEAP_SIZE;

    
    /* Add event handler on duplicated IP address */
#if FNET_CFG_IP4    
    fnet_netif_dupip_handler_init (fapp_dup_ip_handler);
#endif    
            
    /* Init FNET stack */
    if(fnet_init(&init_params) != FNET_ERR)
    {
    #if FAPP_CFG_PARAMS_READ_FLASH
        /* During bootup, the most recently stored customer configuration data will be read and used to configure the interfaces.*/
        if(fapp_params_from_flash() == FNET_OK)
        {
            fnet_printf(FAPP_PARAMS_LOAD_STR);
        }
    #endif

        if(fnet_netif_get_default() == FNET_NULL)
        {
            fnet_printf(FAPP_NET_ERR);
        }
            
    #if (FAPP_CFG_EXP_CMD && FNET_CFG_FS) || (FAPP_CFG_HTTP_CMD && FNET_CFG_HTTP)   
        fapp_fs_mount(); /* Init FS and mount FS Image. */
    #endif   
            
        /* Init main shell. */
        shell_params.shell = &fapp_shell;
        shell_params.cmd_line_buffer = fapp_cmd_line_buffer;
        shell_params.cmd_line_buffer_size = sizeof(fapp_cmd_line_buffer);
        shell_params.stream = FNET_SERIAL_STREAM_DEFAULT;
        shell_params.echo = FNET_TRUE;
            
        if((fapp_shell_desc = fnet_shell_init(&shell_params)) != FNET_ERR)
        {
            fapp_boot(fapp_shell_desc);
        }
        else
        {
            fnet_printf(FAPP_INIT_ERR, "Shell");
        }
    }
    else
    {
        fnet_printf(FAPP_INIT_ERR, "FNET");
    }

}

/************************************************************************
* NAME: fapp_init
*
* DESCRIPTION: FNET Application release.
************************************************************************/
#if FAPP_CFG_REINIT_CMD 
static void fapp_release(fnet_shell_desc_t desc)
{
    #if FAPP_CFG_LLMNR_CMD && FNET_CFG_LLMNR        /* Release LLMNR server. */ 
    fapp_llmnr_release();
    #endif  

    #if FAPP_CFG_DHCP_CMD && FNET_CFG_DHCP && FNET_CFG_IP4
    fapp_dhcp_release();                            /* Release DHCP client. */
    #endif

    #if FAPP_CFG_TELNET_CMD && FNET_CFG_TELNET      /* Release TELNET server. */   
    fapp_telnet_release();
    #endif
 
    #if FAPP_CFG_HTTP_CMD && FNET_CFG_HTTP          /* Release HTTP server. */ 
    fapp_http_release();
    #endif    
 
    #if FAPP_CFG_TFTPS_CMD                          /* Release TFTP server. */
    fapp_tftps_release();
    #endif   

    #if (FAPP_CFG_EXP_CMD && FNET_CFG_FS) || (FAPP_CFG_HTTP_CMD && FNET_CFG_HTTP)   
    fapp_fs_unmount();                              /* Unmount and release FS. */
    #endif 
    
    fnet_shell_release(desc);                       /* Release shell. */
    
    fnet_release();                                 /* Release the FNET stack.*/
}
#endif /* FAPP_CFG_REINIT_CMD */

/************************************************************************
* NAME: fapp
*
* DESCRIPTION: main() of the shell demo.
************************************************************************/
void fapp_main(void)
{
    fapp_init();
    
    /* Polling services.*/
    while(1)
    {
       fnet_poll_services();
    }
}

/************************************************************************
* NAME: fapp_netif_info_print
*
* DESCRIPTION: Print detailed address information about default
*              network interface.
************************************************************************/
void fapp_netif_info_print( fnet_shell_desc_t desc, fnet_netif_desc_t netif)
{
    fnet_char_t name[FNET_NETIF_NAMELEN];

    fnet_netif_get_name(netif, name, sizeof(name));
    fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_S, "Interface", name);
    
    fapp_netif_addr_print(desc, AF_SUPPORTED, netif, FNET_TRUE);
#if FNET_CFG_IP4
    {    
        fnet_ip4_addr_t ip_addr;
        fnet_char_t     ip_str[FNET_IP4_ADDR_STR_SIZE];
          
        ip_addr = fnet_netif_get_ip4_subnet_mask(netif);
        fnet_inet_ntoa(*(struct in_addr *)( &ip_addr), ip_str);
        fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_S, "IPv4 Subnet mask", ip_str);
        
        ip_addr = fnet_netif_get_ip4_gateway(netif);
        fnet_inet_ntoa(*(struct in_addr *)( &ip_addr), ip_str);
        fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_S, "IPv4 Gateway", ip_str);
      
    #if FNET_CFG_DNS
        ip_addr = fnet_netif_get_ip4_dns(netif);    
        fnet_inet_ntoa(*(struct in_addr *)( &ip_addr), ip_str);
        fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_S, "IPv4 DNS", ip_str);
    #endif
    }
#endif /* FNET_CFG_IP4 */
}

/************************************************************************
* NAME: fapp_netif_addr_print
*
* DESCRIPTION: Print Interface IP addresses. 
************************************************************************/
void fapp_netif_addr_print(fnet_shell_desc_t desc, fnet_address_family_t family, fnet_netif_desc_t netif, fnet_bool_t print_type)
{
	fnet_char_t    ip_str[FNET_IP_ADDR_STR_SIZE]={0};
    
#if FNET_CFG_IP4
    if((family & AF_INET)==AF_INET)
    {
        fnet_ip4_addr_t local_ip;
        
        local_ip = fnet_netif_get_ip4_addr(netif);
        fnet_shell_printf(desc, FAPP_SHELL_INFO_FORMAT_S, "IPv4 Address", fnet_inet_ntoa(*(struct in_addr *)(&local_ip), ip_str) ); 
        if(print_type)
        {
            fnet_shell_println(desc," <%s>", fnet_netif_get_ip4_addr_automatic(netif) ? "automatic" : "manual");
        }
        else
        {
            fnet_shell_println(desc, "");  
        }
    }
#endif /* FNET_CFG_IP4 */
#if FNET_CFG_IP6
    if((family & AF_INET6)==AF_INET6)
    {
        fnet_bool_t                 result;
        fnet_index_t                n;
        fnet_netif_ip6_addr_info_t  addr_info;
        
        /* Print all assigned IPv6 addreses.*/
        n=0u;
        for(;;) 
        {
            result = fnet_netif_get_ip6_addr (netif, n, &addr_info);
            
            if(result == FNET_TRUE)
            {
                fnet_inet_ntop(AF_INET6, (fnet_uint8_t*)(&addr_info.address), ip_str, sizeof(ip_str));
                            
                fnet_shell_printf(desc, FAPP_SHELL_INFO_FORMAT_S, "IPv6 Address", ip_str);
                if(print_type)
                {
                    fnet_shell_println(desc," <%s> ScopeID:%d", (addr_info.type == FNET_NETIF_IP6_ADDR_TYPE_AUTOCONFIGURABLE)  ? "autoconfigurable" : "manual", fnet_netif_get_scope_id(netif)); 
                }
                else
                {
                    fnet_shell_println(desc,"");    
                }
            }
            else
            {
               break;
            }

            n++;
        }
    }
#endif /* FNET_CFG_IP6 */
}

/************************************************************************
* NAME: fapp_info_print
*
* DESCRIPTION: Display detailed information about the stack.
************************************************************************/
static void fapp_info_print( fnet_shell_desc_t desc )
{
    fnet_char_t                mac_str[FNET_MAC_ADDR_STR_SIZE];
    fnet_mac_addr_t     macaddr;
    fnet_netif_desc_t   netif = fnet_netif_get_default();         

    fapp_netif_info_print(desc, netif);

    /* HW address, if any */
    if(fnet_netif_get_hw_addr(netif, macaddr, sizeof(fnet_mac_addr_t)) == FNET_OK)
    {
        fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_S, "MAC Address", fnet_mac_to_str(macaddr, mac_str));
    }    
    fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_D, "MTU", fnet_netif_get_mtu(netif));    
    fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_S, "Link Status", fnet_netif_connected(netif) ? "connected" : "unconnected");
    fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_D, "Free Heap", fnet_free_mem_status());

#if FAPP_CFG_HTTP_CMD && FNET_CFG_HTTP
    fapp_http_info(desc);
#endif

#if FAPP_CFG_DHCP_CMD && FNET_CFG_DHCP && FNET_CFG_IP4
    fapp_dhcp_info(desc);
#endif

#if FAPP_CFG_TELNET_CMD && FNET_CFG_TELNET
    fapp_telnet_info(desc);
#endif   

#if FAPP_CFG_TFTPS_CMD && FNET_CFG_TFTP_SRV
    fapp_tftps_info(desc);
#endif 

#if FAPP_CFG_LLMNR_CMD && FNET_CFG_LLMNR
    fapp_llmnr_info(desc);
#endif 
}

/************************************************************************
* NAME: fapp_info_cmd
*
* DESCRIPTION: "info" command
************************************************************************/
#if FAPP_CFG_INFO_CMD
static void fapp_info_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv )
{
    FNET_COMP_UNUSED_ARG(argc);
    FNET_COMP_UNUSED_ARG(argv);

    fapp_info_print(desc);
}
#endif

/************************************************************************
* NAME: fapp_stat_cmd
*
* DESCRIPTION: "stat" command
************************************************************************/
#if FAPP_CFG_STAT_CMD
static void fapp_stat_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv )
{
    struct fnet_netif_statistics    statistics;
    fnet_netif_desc_t               netif = fnet_netif_get_default();  

    FNET_COMP_UNUSED_ARG(argc);
    FNET_COMP_UNUSED_ARG(argv);

    /* Print Packet statistics. */
    if(fnet_netif_get_statistics(netif, &statistics) == FNET_OK)
    {
        fnet_shell_println(desc, "\nPackets:");
        fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_D, "TX Packets", statistics.tx_packet);
        fnet_shell_println(desc, FAPP_SHELL_INFO_FORMAT_D, "RX Packets", statistics.rx_packet);
    }

#if FNET_CFG_IP6
    {
        fnet_index_t                        i;
        fnet_netif_ip6_prefix_t             ip6_prefix;
        fnet_netif_ip6_neighbor_cache_t     ip6_neighbor_cache;
        fnet_char_t                                numaddr[FNET_IP6_ADDR_STR_SIZE];
        fnet_char_t                                mac_str[FNET_MAC_ADDR_STR_SIZE];

        /* Print content of IPv6 Prefix List. */
        fnet_shell_println(desc, "\nIPv6 Prefix List:");
        for(i=0U; fnet_netif_get_ip6_prefix(netif, i, &ip6_prefix) == FNET_TRUE; i++)
        {
            fnet_shell_println(desc,"   [%d] %s/%d\n", i, 
                                fnet_inet_ntop(AF_INET6, &ip6_prefix.prefix, numaddr, sizeof(numaddr)), ip6_prefix.prefix_length);
        }     

        /* Print content of IPv6 Neighbor Cache. */
        for(i=0U; fnet_netif_get_ip6_neighbor_cache(netif, i, &ip6_neighbor_cache) == FNET_TRUE; i++)
        {
            if(i == 0U)
            {
                fnet_shell_println(desc, "\nIPv6 Neighbor Cache:");
            }
            fnet_shell_println(desc,"   [%d] %s = %s (%s)\n", i, 
                                fnet_inet_ntop(AF_INET6, &ip6_neighbor_cache.ip_addr, numaddr, sizeof(numaddr)), 
                                fnet_mac_to_str(ip6_neighbor_cache.ll_addr, mac_str),
                                (ip6_neighbor_cache.is_router == FNET_TRUE) ? "router" : "host");
        }    
    }
#endif

}
#endif

/************************************************************************
* NAME: fapp_shell_init
*
* DESCRIPTION: Main Shell initial function.
************************************************************************/
void fapp_shell_init( fnet_shell_desc_t desc )
{
    fnet_shell_println(desc, "\n%s", FAPP_DELIMITER_STR);
    fnet_shell_println(desc, " %s", FAPP_CFG_NAME);

    /* FNET Header */
    fnet_shell_println(desc, FAPP_DELIMITER_STR);
    
    fnet_shell_println(desc, " %s for %s", FNET_DESCRIPTION, FNET_CPU_STR);
    fnet_shell_println(desc, " Version %s", FNET_VERSION);
    fnet_shell_println(desc, " Built %s by %s", FNET_BUILD_DATE, FNET_COMP_STR);
#if 0 /* Optional information */
    fnet_shell_println(desc, " %s", FNET_COPYRIGHT);
    fnet_shell_println(desc, " %s", FNET_LICENSE);
#endif
    fnet_shell_println(desc, FAPP_DELIMITER_STR);
    fapp_info_print(desc);
    fnet_shell_println(desc, "\n Enter 'help' for command list.");
    fnet_shell_println(desc, "%s\n", FAPP_DELIMITER_STR);
}

/************************************************************************
* NAME: fapp_go_cmd
*
* DESCRIPTION:  
************************************************************************/
#if FAPP_CFG_GO_CMD
void fapp_go_cmd ( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t **argv )
{
	fnet_uint32_t   address;
	fnet_char_t    *p;

	if (argc == 2u)
	{
		address = fnet_strtoul(argv[1],&p,16u);
		
		if (p == argv[1])
        {
            fnet_shell_println(desc, FAPP_PARAM_ERR, argv[1] );     
            return;
        }
    }
    else
    {    
        address = fapp_params_boot_config.go_address;
    }
  
	fapp_go(desc, address);	
}
#endif

/************************************************************************
* NAME: fapp_go
*
* DESCRIPTION:   Jump to application entry point.
************************************************************************/
#if FAPP_CFG_GO_CMD || FAPP_CFG_BOOTLOADER || FAPP_CFG_SETGET_CMD_BOOT
static void fapp_go ( fnet_shell_desc_t desc, fnet_uint32_t address )
{
    if((fapp_params_boot_config.go_address == 0u) || (*(fnet_uint32_t*)address == 0xffffffffu))
    {
        fnet_printf("\nThere is no code on user application startup vector.\n");
    }
    else
    {    
        
      fnet_shell_println(desc, FAPP_GO_STR, address);
   
      fnet_release(); /* Release the FNET stack.*/
     
      (( void(*)(void) )FNET_CPU_ADDR_TO_INSTRUCTION(address))(); /* Jump. */
    }
}
#endif

/************************************************************************
* NAME: fapp_save_cmd
*
* DESCRIPTION: Save environment variables to persistent storage. 
************************************************************************/
#if FAPP_CFG_SAVE_CMD && FNET_CFG_FLASH 
static void fapp_save_cmd ( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv )
{
    (void)argc;
	(void)argv;

    if(fapp_params_to_flash() == FNET_OK)
    {
        fnet_shell_println(desc, FAPP_SAVE_STR);
    }
    else
    {
        fnet_shell_script_release(desc);   /* Critical error. Clear script. */
        fnet_shell_println(desc, FAPP_SAVE_FAILED_STR);
    }
}
#endif

/************************************************************************
* NAME: fapp_help_cmd
*
* DESCRIPTION: Display command help. 
************************************************************************/
void fapp_help_cmd ( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t **argv )
{
    (void)argc;
	(void)argv;

    fnet_shell_help(desc);
}

/************************************************************************
* NAME: fapp_reinit_cmd
*
* DESCRIPTION: Used to test FNET release/init only. 
************************************************************************/
#if FAPP_CFG_REINIT_CMD 
void fapp_reinit_cmd ( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv )
{
    (void)argc;
	(void)argv;

    fapp_release(desc); /* FAPP release. */

    fapp_init();        /* FAPP reinit.*/
}
#endif

/************************************************************************
* NAME: fapp_bind_cmd
*
* DESCRIPTION: Binds IPv6 address to the default interface. 
************************************************************************/
#if FAPP_CFG_BIND_CMD && FNET_CFG_IP6
static void fapp_bind_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv )
{
    fnet_netif_desc_t   netif = fnet_netif_get_default();
    fnet_ip6_addr_t     addr;
    
    FNET_COMP_UNUSED_ARG(argc);
    
    if(fnet_inet_pton(AF_INET6, argv[1], &addr, sizeof(addr)) == FNET_OK)
    {
        fnet_netif_bind_ip6_addr(netif, &addr, FNET_NETIF_IP6_ADDR_TYPE_MANUAL);
    }
    else
    {
        fnet_shell_println(desc, FAPP_PARAM_ERR, argv[1]);
    }
}
#endif

/************************************************************************
* NAME: fapp_unbind_cmd
*
* DESCRIPTION: Unbinds IPv6 address from the default interface. 
************************************************************************/
#if FAPP_CFG_UNBIND_CMD && FNET_CFG_IP6
static void fapp_unbind_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv )
{
    fnet_netif_desc_t   netif = fnet_netif_get_default();
    fnet_ip6_addr_t     addr;
    
    FNET_COMP_UNUSED_ARG(argc);
    
    if(fnet_inet_pton(AF_INET6, argv[1], &addr, sizeof(addr)) == FNET_OK)
    {
        fnet_netif_unbind_ip6_addr(netif, &addr);
    }
    else
    {
        fnet_shell_println(desc, FAPP_PARAM_ERR, argv[1]);
    }
}
#endif

/************************************************************************
* NAME: fapp_exp_cmd
*
* DESCRIPTION: Start file explorer shell. 
************************************************************************/
#if FAPP_CFG_EXP_CMD && FNET_CFG_FS
static void fapp_exp_cmd( fnet_shell_desc_t desc, fnet_index_t argc, fnet_char_t ** argv )
{
    FNET_COMP_UNUSED_ARG(argc);
    FNET_COMP_UNUSED_ARG(argv);

    fnet_shell_switch(desc, &fapp_fs_shell);
}
#endif










