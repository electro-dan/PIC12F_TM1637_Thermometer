#include <system.h>
#include "PIC12F_TM1637_Thermometer.h"

//Target PIC12F675 configuration word
#pragma DATA _CONFIG, _PWRTE_ON & _WDT_OFF & _INTRC_OSC_NOCLKOUT & _CPD_OFF & _CP_OFF & _MCLRE_OFF & _BODEN_ON

//Set clock frequency
#pragma CLOCK_FREQ	4000000

/*********************************************************************************************
  oneWireBusReset()
  First part of the reset routine - drive the bus low for 500us
*********************************************************************************************/
void oneWireBusReset() {
    char isPresent;
    oneWireTris = 1; // start with high
    isPresent = 0;
    // Send the reset pulse - drive low for 500us
    oneWireBus = 0;      
    oneWireTris = 0;
    delay_10us(50);
    // Release line and wait 70us for PD Pulse
    oneWireTris = 1;
    delay_10us(7);
    // Now sample, if there is a sensor on the bus, the line should be low
    if (oneWireBus) {
        oneWireIsPresent = 0; // no devices
    }
    delay_10us(50);
}

/*********************************************************************************************
  oneWireTxByte(char data)
  Transmits a single byte from the bus
*********************************************************************************************/
void oneWireTxByte(char cData) {
    char cTemp = 1;
    // Loop through the eight bits in the byte
    for (char i = 0; i < 8; i++) {
        // Send the LSB first

        // Drive the line low initially for 3us
        oneWireTris = 0;
        oneWireBus = 0;

        // Delay not needed for 4MHz PIC
        //delay_us(3); // Delay 3us
        
        if (cData & cTemp) {
            oneWireTris = 1; // Release the bus
        }
        
        delay_10us(5); // Delay 60us - 50us works fine with code delays
        oneWireTris = 1; // Release the bus
        
        // move the test bit
        cTemp <<= 1;
    }
}

/*********************************************************************************************
  oneWireTxBytes(char data, char data2)
  Transmits a 2 bytes from the bus
*********************************************************************************************/
void oneWireTxBytes(char cData, char cData2) {
    // Reset first - done in main
    //oneWireBusReset();
    // Send first byte
    oneWireTxByte(cData);
    // Send second byte
    oneWireTxByte(cData2);
}

/*********************************************************************************************
  oneWireRxByte()
  Receives a single byte from the bus
*********************************************************************************************/
char oneWireRxByte() {
    char cDataIn = 0;
    // Loop through the eight bits in the byte
    for(char i = 0; i < 8; i++) {
        // Bring bus low for 15us
        oneWireTris = 0;
        oneWireBus = 0;

        // Delay not needed for 4MHz PIC
        //delay_us(15); // Delay 15us

        // Release bus for 6us, this is enough time for the slave to respond
        oneWireTris = 1;
        delay_us(6); // Delay 6us
        
        // Shift data already received left
        cDataIn >>= 1;
        // Check the value of the onewire bus - set the MSB of cDataIn if so
        if (oneWireBus)
            cDataIn.7 = 1;

        // To finish time slot
        delay_10us(6); // 60us
    } 
    
    return cDataIn;
}

/*********************************************************************************************
 tm1637UpdateDisplay()
 Publish the tm1637Data array to the display
*********************************************************************************************/
void tm1637UpdateDisplay() {
    // Write 0x40 [01000000] to indicate command to display data - [Write data to display register]
    tm1637StartCondition();
    tm1637ByteWrite(tm1637ByteSetData);
    tm1637StopCondition();

    // Specify the display address 0xC0 [11000000] then write out all 4 bytes
    tm1637StartCondition();
    tm1637ByteWrite(tm1637ByteSetAddr);
    for (char i = 0; i < tm1637MaxDigits; i++)
        tm1637ByteWrite(tm1637Data[i]);
    tm1637StopCondition();

    // Write 0x80 [10001000] - Display ON, plus brightness
    tm1637StartCondition();
    tm1637ByteWrite((tm1637ByteSetOn + tm1637Brightness));
    tm1637StopCondition();
}

/*********************************************************************************************
 tm1637StartCondition()
 Send the start condition
*********************************************************************************************/
void tm1637StartCondition() {
    tm1637dioTris = 0;
    tm1637dio = 0;
    delay_us(100);
}

/*********************************************************************************************
 tm1637ByteWrite(char bWrite)
 Write one byte
*********************************************************************************************/
char tm1637ByteWrite(char bWrite) {
    for (char i = 0; i < 8; i++) {
        // Clock low
        tm1637clkTris = 0;
        tm1637clk = 0;
        delay_us(100);
        
        // Test bit of byte, data high or low
        if ((bWrite & 0x01) > 0) {
            tm1637dioTris = 1;
        } else {
            tm1637dioTris = 0;
            tm1637dio = 0;
        }
        delay_us(100);

        // Shift bits to the left
        bWrite = (bWrite >> 1);
        // Clock high
        tm1637clkTris = 1;
        delay_us(100);
    }

    // Wait for ack, send clock low
    tm1637clkTris = 0;
    tm1637clk = 0;
    // Make data an input
    tm1637dioTris = 1;
    tm1637dio = 0;
    delay_us(100);
    
    // Clock high
    tm1637clkTris = 1;
    delay_us(100);
    char tm1637ack = tm1637dio;
    if (!tm1637ack) {
        tm1637dioTris = 0;
        tm1637dio = 0;
    }
        
    // Clock low
    delay_us(100);
    tm1637clkTris = 0;
    tm1637clk = 0;
    delay_us(100);

    return 1;
}

/*********************************************************************************************
 tm1637StopCondition()
 Send the stop condition
*********************************************************************************************/
void tm1637StopCondition() {
    // Data low
    tm1637dioTris = 0;
    tm1637dio = 0;
    delay_us(100);
    // Release clk
    tm1637clkTris = 1;
    //tm1637clk = 1;
    delay_us(100);
    // Release data
    tm1637dioTris = 1;
    delay_us(100);
}


/*********************************************************************************************
  Function called once only to initialise variables and
  setup the PIC registers
*********************************************************************************************/
void initialise() {
    // GP0 = OUT: N/C
    // GP1 = OUT: N/C
    // GP2 = IN/OUT: DS18B20
    // GP3 = OUT: N/C
    // GP4 = IN/OUT: TM1637 DIO
    // GP5 = IN/OUT: TM1637 CLK
    gpio = 0b00000000; // all pins off by default
    trisio = 0b00110100; // TM1637 pins and DS18B20 pin are inputs
    
    ansel = 0; // configure A/D inputs as digital I/O
    cmcon = 7; // compartor off

    option_reg = 0;
    option_reg.NOT_GPPU = 1; // disable pull ups
    
    // Setup timer 1, used to periodically ask for a temperature reading, and receive it after sending - 262ms
    // Timer calculator: http://eng-serve.com/pic/pic_timer.html
    // Timer 1 setup - interrupt every 262ms seconds 4MHz
    t1con = 0;
    t1con.T1CKPS1 = 1;   // bits 5-4  Prescaler Rate Select bits
    //t1con.T1CKPS0 = 0;   // bit 4
    //t1con.T1OSCEN = 0;   // bit 3 Timer1 Oscillator Enable Control bit 1 = off - this should be cleared so we can use RB7 and RB6 as outputs
    t1con.NOT_T1SYNC = 1;    // bit 2 Timer1 External Clock Input Synchronization Control bit...1 = Do not synchronize external clock input
    //t1con.TMR1CS = 0;    // bit 1 Timer1 Clock Source Select bit...0 = Internal clock (FOSC/4)
    t1con.TMR1ON = 1;    // bit 0 enables timer
    pie1.TMR1IE = 1; // Timer 1 interrupt enable
    pir1.TMR1IF = 0; // Clear timer 1 interrupt flag bit
    
    // No task at initialisation
    cTask = 0;
    
    // Enable interrupts
    intcon.GIE = 1;
    intcon.PEIE = 1;
}


/*********************************************************************************************
  interrupt()
  Interrupt handler
*********************************************************************************************/
void interrupt() {
    // Handle timer1 interrupt - delay counter
    if (pir1.TMR1IF && pie1.TMR1IE) {
        // timer 1 will interrupt every 262ms with a 1:4 prescaler at 4MHz
        // We'll ask for the temperatute every 30 seconds
        // Into 30 seconds, 262ms goes 114 times (roughly)
        if (iTimer1Count == TIMER_1_INTERVAL) {
            // If the number of tasks to perform is less than the limit,
            // then add this task to the task array
            cTask.TASK_TIMER1_START = 1;
        }
        // just over 750ms after asking for temperature, it should be ready, so get the reading
        // 0.75 seconds is three more ticks above TIMER_1_INTERVAL
        if (iTimer1Count >= TIMER_1_INTERVAL + 3) {
            iTimer1Count = 0;
            // If the number of tasks to perform is less than the limit,
            // then add this task to the task array
            cTask.TASK_TIMER1_READ = 1;
        }
        // Count the number of times this timer overflowed
        iTimer1Count++;
        // Clear interrupt flag
        pir1.TMR1IF = 0; 
    }
}

/*********************************************************************************************
  displayTemp()
  Used to split the 16 bit integer returned from the ds18b20 into parts for display
  cTempH - upper 8 bits
  cTempL - lower 8 bits
*********************************************************************************************/
void convertTemp() {
    // convert both bytes to a 16bit int - e.g. 0000 0001 0100 0110 (1 and 70, gives 326)
    
    signed int iTemp = (cTempH << 8) | cTempL;
    
    // Celcius
    char isMinus = (iTemp < 0);
    if (isMinus) {
        iTemp = ~iTemp + 1;
    }
    // this gets celcius * 100 - https://www.phanderson.com/PIC/PICC/sourceboost/ds18b20_1.html
    int iValue = (6 * iTemp) + (iTemp / 4);

    // patch to read a more realistic room temperature. Thermometer reads about 1C higher than it should - won't work below 1C.
    iValue -= 100;
    
    // Split the temperature reading into digits
    
    // simple way, but more program memory needed for PIC12 or PIC16 (more than 100 words more)
    //char cDig3 = iValue / 1000;
    //char cDig2 = (iValue / 100) % 10;
    //char cDig1 = (iValue / 10) % 10;
    //char cDig0 = iValue % 10;
    
    // less program memory needed - may be slower executing
    // https://electronics.stackexchange.com/questions/158563/how-to-split-a-floating-point-number-into-individual-digits
    char cDig3 = 0;
    char cDig2 = 0;
    char cDig1 = 0;
    char cDig0 = 0;
    
    // incrementing variables for each digit

    // determine to thousands digit
    while (iValue >= 1000) {
        iValue = iValue - 1000;
        // each time we take off 1000, the digit is incremented
        cDig3++;
    }

    // determine to hundreds digit
    while (iValue >= 100) {
        iValue = iValue - 100;
        // each time we take off 100, the digit is incremented
        cDig2++;
    }

    // determine to tens digit
    while (iValue >= 10) {
        iValue = iValue - 10;
        // each time we take off 10, the left most digit is incremented
        cDig1++;
    }

    // the last digit is what's left on iValue
    cDig0 = iValue;

    // translate the numbers to digit values
    tm1637Data[0] = tm1637DisplayNumtoSeg[cDig3];
    tm1637Data[1] = tm1637DisplayNumtoSeg[cDig2] + tm1637Dot;
    tm1637Data[2] = tm1637DisplayNumtoSeg[cDig1];
    tm1637Data[3] = tm1637DisplayNumtoSeg[cDig0];

    // left fill zeroes with blanks up to the digit before the decimal place
    if (cDig3 == 0) {
        tm1637Data[0] = 0;
    }

    if (isMinus) {
        // If minus and value less than or equal -10 (checked as >1000), shift the digits right
        if (iValue >= 1000) {
            tm1637Data[1] = tm1637Data[0];
            tm1637Data[2] = tm1637Data[1];
            tm1637Data[3] = tm1637Data[2];
        }
        // If minus, overwrite left most digit with minus sign
        tm1637Data[0] = 0x40;
    }
}

/*********************************************************************************************
  startTemp()
  Sends the Convert T [44h] function command to the ds18b20
*********************************************************************************************/
void startTemp() {
    // CC indicates to skip rom - addressing all devices (there is only one)
    // 44 is the convert function
    oneWireTxBytes(0xCC, 0x44);
}

/*********************************************************************************************
  startTemp()
  Sends the Read Scratchpad [BEh] function command to the ds18b20
*********************************************************************************************/
void readTemp() {
    // CC indicates to skip rom - addressing all devices (there is only one)
    // BE indicates to read scratchpad
    oneWireTxBytes(0xCC, 0xBE);
    // Now get the temperature from the scratchpad
    // This is in the first two bytes - so get those only and ignore the rest
    cTempL = oneWireRxByte();
    cTempH = oneWireRxByte();
}

void main() {
    initialise();
    convertTemp();
    tm1637UpdateDisplay();

    // Endless loop
    while(1) {
        // Task scheduler
        // If there are tasks to be performed, find out the
        // most recent task from the array and execute it
        while (cTask > 0) {
            if (cTask.TASK_TIMER1_START) {
                // Timer 1 has finished counting to 30 seconds, ask to convert
                oneWireBusReset();
                startTemp(); 
                cTask.TASK_TIMER1_START = 0;
            }
            if (cTask.TASK_TIMER1_READ) {
                // Timer 1 has finished counting a further 750ms, read the converted temperature
                oneWireBusReset();
                readTemp(); 
                // store it in the array, next display refresh will pick it up
                convertTemp();
                // Display on TM1637
                tm1637UpdateDisplay();
                cTask.TASK_TIMER1_READ = 0;
            }
        }
    }
}
