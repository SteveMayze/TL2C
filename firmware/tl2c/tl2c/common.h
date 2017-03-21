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
	#define F_CPU 8000000UL
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

	/////////////////////////////////////////////////////////////////////////
	///	\brief	Defines the error for invalid pointers
	/////////////////////////////////////////////////////////////////////////
	#define INVALID_POINTER_ERROR 	-3



///////////////////////////////////////////////////////////////////////////////
    /// \brief Firmware version
    /// D = development version of the firmware. Should only be used for testing purposes
    /// C = concession version. This version of the firmware is usual custom for a customer. see CONCESSION_NUMBER
    /// P = production version
    ///
    /// \sa CONCESSION_NUMBER
    ///////////////////////////////////////////////////////////////////////////////
    #define FIRMWARE_VERSION "00.0001D"

    ///////////////////////////////////////////////////////////////////////////////
    /// \brief Hardware version
    ///////////////////////////////////////////////////////////////////////////////
    #define HARDWARE_VERSION "00"

    ///////////////////////////////////////////////////////////////////////////////
    /// \brief Hardware version
    ///////////////////////////////////////////////////////////////////////////////
    #define COMPILED_DATA_TIME "[" __DATE__ " " __TIME__ "]"

    ///////////////////////////////////////////////////////////////////////////////
    /// \brief Enables the debug interface and all debug message associated
    ///////////////////////////////////////////////////////////////////////////////
    #define EN_DEBUG_INTERFACE

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
#define TL2C_I2C_ADDRESS 5

	union TL2C_status_reg_t {
		unsigned char all;
		struct{
			unsigned char TL2C_Z1F:1;	// Zone 1 Status Flag
			unsigned char TL2C_Z2F:1;	// Zone 2 Status Flag
			unsigned char TL2C_Z3F:1;	// Zone 3 Status Flag
			unsigned char TL2C_NA:5;	// Not Used
		};
	};
	
	union TL2C_config_reg_t {
		unsigned char all;
		struct{
			unsigned char TL2C_Z1A:1;	// Zone 1 Status Flag
			unsigned char TL2C_Z2A:1;	// Zone 2 Status Flag
			unsigned char TL2C_Z3A:1;	// Zone 3 Status Flag
			unsigned char TL2C_NA:5;	// Not Used
		};
	};
	

	typedef struct {
		union TL2C_status_reg_t TL2C_status_reg;
		union TL2C_config_reg_t TL2C_config_reg;
		unsigned char TL2C_Zone1_On_Delay;
		unsigned char TL2C_Zone2_On_Delay;
		unsigned char TL2C_Zone3_On_Delay;
		unsigned char TL2C_I2C_Address;
	} TL2C_Registers_struct;

	volatile TL2C_Registers_struct TL2C_Registers;
	volatile unsigned char TL2C_RegisterAddress;

#endif
