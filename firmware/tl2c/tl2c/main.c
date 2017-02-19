/*
 * tl2c.c
 *
 * Created: 18/02/2017 15:26:52
 * Author : Steve
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>


#ifndef F_CPU
#define F_CPU 1000000UL
#endif

volatile unsigned int led_flag = 0;
unsigned int startValue = 0xFF;


int main(void)
{
    /* Replace with your application code */

	// Outputs
	// PA0 - UG Untergesschoss relay
	// PA1 - EG	Erdgeschoss relay
	// PA2 - OG	Obergeschoss relay

	// Inputs 
	// PA3 - UG Untergeschoss PIR signal
	// PA4 - EG Erdgeschoss PIR signal
	// PA5 - OG Obergeschoss PIR signal


#define CTC_MODE	// Testing the timers and interrupts


// The the data direction for the relay outputs
DDRA |= ( 1 << PORTA0 ) | ( 1 << PORTA1 ) | ( 1 << PORTA2 );
DDRA &= ~( 7 << PORTA3 );

#ifdef CTC_MODE
// This is the CTC mode whereby the counter registers are are set and a
// Wave Generator is created. In this example only the OCR0A is used, It
// is possible also to configure the OCR0B as well.
TCCR0A  = 0;										// Reset the operation
TCCR0A  |=  ( 1 << WGM01 );							// CTC operation
TCCR0B  |=  ( 5 << CS00  );							// 1024 Pre-scaler
OCR0A = startValue;									// Set the start value
TIMSK |= ( 1 << OCIE0A );							// Enable the interrupt on OCR0A
#define LED PORTA0
#endif

#ifdef NORMAL_MODE
// In normal mode, only the TCNT0 needs to be set ( as well as the pre-scaler).
TCCR0A  = 0;										// Reset the operation
TCCR0B  |=  ( 5 << CS00  );							// 1024 Pre-scaler
TCNT0  = startValue;								// Set the start value
TIMSK |= ( 1 << TOIE0 );							// Enable the over flow interrupt
#define LED  PORTA1
#endif


	PORTA &= ~( 7 << PORTA0 );
	sei();

    while (1) 
    {
		if( led_flag){
			led_flag = 0;
			PORTA ^= (1 << LED);
		}
    }
}

#ifdef CTC_MODE
ISR(TIM0_COMPA_vect) {
	// OCR0A = startValue;	// This value does not have to be reset like in Normal Mode.
	led_flag = 1;
}
#endif

#ifdef NORMAL_MODE
ISR(TIM0_OVF_vect) {
	TCNT0  = startValue;	// This value must be reset each time to keep the frequency
	led_flag = 1;
}
#endif

