// This file has been prepared for Doxygen automatic documentation generation.
/*! \file ********************************************************************
*
* Atmel Corporation
*
* - File              : SMBExample.c
* - Compiler          : IAR EWAAVR 4.10b
*
* - Support mail      : avr@atmel.com
*
* - Supported devices : All AVR devices with a TWI module can be used.
*                       The example is written for ATmega32
*
* - AppNote           : AVR316 - SMBus slave
*
* - Description       : Application specific part of SMBus slave
*                       implementation. Actions based o
*
* $Revision: 1.5 $
* $Date: Thursday, September 29, 2005 12:10:38 UTC $
*****************************************************************************/

#include <avr/io.h>
#include <avr/interrupt.h>
#include "SMBExample.h"
#include "SMBSlave.h"


/*! \brief Prepares the response to a Receive Byte protocol..
 *
 *  This function gets called whenever a SLA+R has been received
 *  right after a Start condition. If the Receive byte protocol is
 *  supported, data should be put in smb->txBuffer[0] and
 *  smb->txLength should be set to 1.
 *
 *  \param smb Pointer to the SMBus driver's SMBData struct.
 *
 *  \note While this runs the SMBCLK is held low, and it is thus important to keep the functions
 *  short enough not to violate the SMBus T_LOW:SEXT of 25ms. If this happens, the master will time
 *  out and drop the lines, and since the AVR's TWI module is I2C compatible there is no timeout
 *  in the TWI module. The AVR can then hold the SMBDAT line low waiting for clock, and thus block
 *  the bus indefinitely.
 */
void ProcessReceiveByte(SMBData *smb)
{
    smb->txBuffer[0] = ~PINB;
    smb->txLength = 1;
}


/*! \brief Prepares response to all supported protocols except Receive Byte
 *
 *  This function gets called whenever a Write byte, Write word, Read byte,
 *  Read word, Process call, Block write, Block read or Block write, block
 *  read process call protocol is in progress. The function is called rigth
 *  after a Stop or Repeated start condition is received.
 *
 *  This function, along with ProcessReceiveByte implements the application
 *  specific parts of the SMBus slave. For this reason, it can get very large.
 *  To remedy this, it has been broken up into one in-lined function per
 *  command code.
 *
 *  Since the TWI module does not differentiate between a Stop condition
 *  and a repeated start condition, it is important that smb->state is set
 *  in this function, to reflect the state of the SMBus driver.
 *
 *  When this function is called, the data received is available through
 *  smb->rxBuffer array. All data received (excluding SLA+W) is available.
 *  The total number of valid bytes in smb->rxBuffer is available in
 *  smb->rxLength. The command code is always available in smb->rxBuffer[0].
 *  The rest of the array is filled according to the SMBus specification.
 *
 *  For Write byte, Write word and Block write, data must simply be copied
 *  to their destination. smb->state should then be set to SMB_STATE_IDLE
 *  before returning.
 *
 *  For Read byte, Read word, Process call, Block read and Block write, block
 *  read process call, a response must be made ready and put in smb-txBuffer.
 *  The data in smb->txBuffer includes all data to be sent back by the SMBus
 *  driver (excluding PEC). The smb->txLength variable must be set to the
 *  total number of bytes to be transmitted (excluding PEC). When the response
 *  is complete, the smb-> state variable should be set to
 *  SMB_STATE_WRITE_READ_REQUESTED before returning.
 *
 *  In the following examples, it is explained how to prepare a response to
 *  these protocols.
 *
 *  Read byte:                                                  <br> <code>
 *  smb->txBuffer[0] = Data byte                                <br>
 *  smb->txLength = 1                                           <br></code>
 *
 *
 *  Read word / Process call:                                   <br> <code>
 *  smb->txBuffer[0] = Data byte low                            <br>
 *  smb->txBuffer[1] = Data byte high                           <br>
 *  smb->txLength = 2                                           <br></code>
 *
 *
 *  Block read / Block write, block read process call:          <br><code>
 *  smb->txBuffer[0] = Byte count (n)                           <br>
 *  smb->txBuffer[1] = Data byte 1                              <br>
 *                :                                             <br>
 *                :                                             <br>
 *  smb->txBuffer[n] = Data byte n                              <br>
 *  smb->txLength = n + 1                                       <br></code>
 *
 *
 *  \param smb Pointer to the SMBus driver's SMBData struct.
 *
 *  \note While this runs the SMBCLK is held low, and it is thus important to keep the functions
 *  short enough not to violate the SMBus T_LOW:SEXT of 25ms. If this happens, the master will time
 *  out and drop the lines, and since the AVR's TWI module is I2C compatible there is no timeout
 *  in the TWI module. The AVR can then hold the SMBDAT line low waiting for clock, and thus block
 *  the bus indefinitely.
 */
void ProcessMessage(SMBData *smb)
{
    if (smb->state == SMB_STATE_WRITE_REQUESTED)
    {
        switch (smb->rxBuffer[0]) // Command code.
        {
			case 0x01:
				PORTB  |= (1 << PORTB0);
				break;
            default:
                break;
        }
    }
    else
    {
        smb->state = SMB_STATE_IDLE;
    }
}

