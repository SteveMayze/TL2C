////////////////////////////////////////////////////////////////////////////////
/// \file	common.h
///	\brief Holds all common code definitions
///
///	\author: Steve Mayze
////////////////////////////////////////////////////////////////////////////////
#ifndef __COMMON_H__
#define __COMMON_H__

	#include <avr/io.h>
	#include <avr/interrupt.h>

	#ifndef F_CPU
	#define F_CPU 1000000UL
	#endif

	#define red_LED 0x00
	#define yellow_LED 0x01
	#define green_LED 0x02

	volatile unsigned int led_flag;



	/////////////////////////////////////////////////////////////////////////
	///	\brief	Defines the true state
	/////////////////////////////////////////////////////////////////////////
	#define TRUE 	1
	/////////////////////////////////////////////////////////////////////////
	///	\brief	Defines the false state
	/////////////////////////////////////////////////////////////////////////
	#define FALSE 	0

	/////////////////////////////////////////////////////////////////////////
	///	\brief	Defines the error state
	/////////////////////////////////////////////////////////////////////////
	#define ERROR 	-2

    ///////////////////////////////////////////////////////////////////////////////
    /// \brief define the union type used to convert between types.
    ///////////////////////////////////////////////////////////////////////////////
    typedef union {
        long double d34_t;      ///< 64bit IEEE floating point number
        float       f32_t[2];   ///< 32bit IEEE float point number
        uint32_t    ui32_t[2];  ///< unsigned 32bit.
        int32_t     i32_t[2];   ///< signed 32bit.
        uint16_t    ui16_t[4];  ///< unsigned 16bit.
        int16_t     i16_t[4];   ///< signed 16bit.
        uint8_t     ui8_t[8];   ///< unsigned 8bit.
        int8_t      i8_t[8];    ///< singed 8bit.
    }DataConverter;


#define TL2C_STATUS_REG 0
#define TL2C_CONFIG_REG 1
#define TL2C_ZONE1_ON_DELAY 2
#define TL2C_ZONE2_ON_DELAY 3
#define TL2C_ZONE3_ON_DELAY 4
#define TL2C_FIRMWARE_VERSION 5


    ///////////////////////////////////////////////////////////////////////////////
    /// \brief Define the status register fields.
    ///////////////////////////////////////////////////////////////////////////////
	union TL2C_status_reg_t {
		unsigned char all;
		struct{
			unsigned char TL2C_Z1F:1;	// Zone 1 Status Flag
			unsigned char TL2C_Z2F:1;	// Zone 2 Status Flag
			unsigned char TL2C_Z3F:1;	// Zone 3 Status Flag
			unsigned char TL2C_NA:5;	// Not Used
		};
	};
	
    ///////////////////////////////////////////////////////////////////////////////
    /// \brief Define the configuration register fields
    ///////////////////////////////////////////////////////////////////////////////
	union TL2C_config_reg_t {
		unsigned char all;
		struct{
			unsigned char TL2C_Z1A:1;	// Zone 1 Activate Flag
			unsigned char TL2C_Z2A:1;	// Zone 2 Activate Flag
			unsigned char TL2C_Z3A:1;	// Zone 3 Activate Flag
			unsigned char TL2C_NA1:1;	// Not Used
			unsigned char TL2C_PIR1E:1;	// Zone 1 Enable Flag
			unsigned char TL2C_PIR2E:1;	// Zone 2 Enable Flag
			unsigned char TL2C_PIR3E:1;	// Zone 3 Enable Flag
			unsigned char TL2C_NA2:1;	// Not Used
		};
	};
	
    ///////////////////////////////////////////////////////////////////////////////
    /// \brief Define the complete register structure with all 6 registers
    ///////////////////////////////////////////////////////////////////////////////
	typedef struct {
		union TL2C_status_reg_t TL2C_status_reg;
		union TL2C_config_reg_t TL2C_config_reg;
		unsigned char TL2C_Zone1_On_Delay;
		unsigned char TL2C_Zone2_On_Delay;
		unsigned char TL2C_Zone3_On_Delay;
		unsigned char TL2C_HW_Version;
	} TL2C_Registers_struct;


	volatile TL2C_Registers_struct TL2C_Registers;
	volatile unsigned char TL2C_RegisterAddress;




    ///////////////////////////////////////////////////////////////////////////////
    /// \brief Define Relay control register
    ///////////////////////////////////////////////////////////////////////////////
	union TL2C_RLY_t {
		unsigned char all;
		struct{
			unsigned char TL2C_RLY_UG:1;	// Zone 1 - UG Relay
			unsigned char TL2C_RLY_EG:1;	// Zone 2 - EG Relay
			unsigned char TL2C_RLY_OG:1;	// Zone 3 - OG Relay
			unsigned char TL2C_NA:5;		// Not Used
		};
	};

    ///////////////////////////////////////////////////////////////////////////////
    /// \brief Define the PIR enable control register
    ///////////////////////////////////////////////////////////////////////////////
	union TL2C_PIR_t {
		unsigned char all;
		struct{
			unsigned char TL2C_PIR_UG:1;	// Zone 1 - UG PIR13
			unsigned char TL2C_PIR_EG:1;	// Zone 2 - EG PIR13
			unsigned char TL2C_PIR_OG:1;	// Zone 3 - OG PIR13
			unsigned char TL2C_NA2:5;		// Not Used
		};
	};


    ///////////////////////////////////////////////////////////////////////////////
    /// \brief Define the relay counter control register which contains the state
	///		and the counters
    ///////////////////////////////////////////////////////////////////////////////
	// union TL2C_RLY_t TL2C_RLY_state;
	typedef struct {
		union TL2C_RLY_t relay_state;
		unsigned char relay1_counter;
		unsigned char relay2_counter;
		unsigned char relay3_counter;
	} TL2C_Relay_ctl_t;

	volatile union TL2C_PIR_t TL2C_PIR_state;
	volatile TL2C_Relay_ctl_t TL2C_Relay_ctl;

	volatile unsigned char TL2C_pir_interrupt;


#endif
