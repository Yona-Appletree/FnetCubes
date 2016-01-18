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
* @file fnet_comp_config.h
*
* @author Andrey Butok
*
* @brief Compiler-specific default configuration file.
*
***************************************************************************/

/************************************************************************
 * !!!DO NOT MODIFY THIS FILE!!!
 ************************************************************************/

#ifndef _FNET_COMP_CONFIG_H_

#define _FNET_COMP_CONFIG_H_

#include "fnet_config.h"


/*! @addtogroup fnet_platform_config  */
/*! @{ */
/**************************************************************************/ /*!
 * @def      FNET_CFG_COMP_compiler_type 
 * @brief    This is the set of the @c FNET_CFG_COMP_[compiler_type] definitions that 
 *           define a currently used compiler. @n
 *           Current version of the FNET supports the following compiler definitions:
 *            - @c FNET_CFG_COMP_CW  = Used compiler is the CodeWarrior.
 *            - @c FNET_CFG_COMP_IAR = Used compiler is the IAR.
 *            - @c FNET_CFG_COMP_UV  = Used compiler is the Keil uVision. 
 *            - @c FNET_CFG_COMP_GHS = Used compiler is the Green Hills. 
 *            @n @n
 *            Selected compiler definition should be only one and must be defined as 1. 
 *            All others may be defined but must have the 0 value.
 *            If no compiler definition is defined, the default compiler is CodeWarrior.
 * 
 ******************************************************************************/
#define FNET_CFG_COMP_compiler_type /* Ignore it. Just only for Doxygen documentation */


/* IAR compiler. */
#ifndef FNET_CFG_COMP_IAR
    #define FNET_CFG_COMP_IAR   (0)
#endif

/* CW compiler. */
#ifndef FNET_CFG_COMP_CW
    #define FNET_CFG_COMP_CW   (0)
#endif

/* Keil uVision compiler. */
#ifndef FNET_CFG_COMP_UV
    #define FNET_CFG_COMP_UV   (0)
#endif

/* GNU GCC */
#ifndef FNET_CFG_COMP_GNUC
    #define FNET_CFG_COMP_GNUC   (0)
#endif

/* GHS compiler. */
#ifndef FNET_CFG_COMP_GHS
    #define FNET_CFG_COMP_GHS   (0)
#endif

#if FNET_CFG_COMP_CW
    #define FNET_COMP_STR    "CW"
#elif FNET_CFG_COMP_IAR
    #define FNET_COMP_STR    "IAR"
#elif FNET_CFG_COMP_UV
    #define FNET_COMP_STR    "UV"
#elif FNET_CFG_COMP_GNUC
   #define FNET_COMP_STR     "GCC"
#elif FNET_CFG_COMP_GHS
    #define FNET_COMP_STR    "GHS"
#else
    #if (defined(__MWERKS__) || defined(__CODEWARRIOR__))
        #define FNET_CFG_COMP_CW    (1)
        #define FNET_COMP_STR       "CW"
    #elif (defined(IAR))
        #define FNET_CFG_COMP_IAR   (1)
        #define FNET_COMP_STR       "IAR"
    #elif (defined(__ghs__))
        #define FNET_CFG_COMP_GHS   (1)
        #define FNET_COMP_STR       "GHS"
    #elif (defined(__CC_ARM))
        #define FNET_CFG_COMP_UV  (1)
		#define FNET_COMP_STR       "UV"
	#elif (defined(__GNUC__))
        #define FNET_CFG_COMP_GNUC  (1)
		#define FNET_COMP_STR       "GCC"
    #elif (defined(__DCC__))
        #error "DIAB compiler is not tested/supported."
    #else
        #error "It is not possible to define the compiler. Please set a FNET_CFG_COMP_XXXX parameter."
    #endif
#endif



/*! @} */

#endif /* _FNET_COMP_CONFIG_H_ */
