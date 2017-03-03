/*
 * twi_slave.h
 *
 * Created: 18/02/2017 15:26:52
 * Author : Steve
 */ 

 #ifndef __twi_slave_h__
 #define __twi_slave_h__

 #define TWI_BUFFER_SIZE 5

 /**
	
  */
 union TIM0_statusReg_A_t {
	 unsigned char all;
	 struct {
		 unsigned char TWI_TWAS:1;		// TWI Address or Stop 
		 unsigned char TWI_TWDIR:1;		// TWI Read/Write Direction 
		 unsigned char TWI_TWBE:1;		// TWI Bus Error
		 unsigned char TWI_TWC:1;		// TWI Collision
		 unsigned char TWI_TWRA:1;		// TWI Receive Acknowledge
		 unsigned char TWI_TWCH:1;		// TWI Clock Hold
 		 unsigned char TWI_TWASIF:1;	// TWI Address/Stop Interrupt Flag
		 unsigned char TWI_TWDIF:1;		// TWI Data Interrupt Flag
	 };
 };

volatile union TIM0_statusReg_A_t TIM0_statusReg_A;

unsigned char TWI_Slave_Initialise( unsigned char TWI_ownAddress );
unsigned char TWI_Start(void);
 unsigned char TWI_isBusy(void);

#define TWI_NO_STATE               0xF8  // No relevant state information available;

#endif