#ifndef _PIC12F_TM1637_Thermometer_H_
#define _PIC12F_TM1637_Thermometer_H_

#define TASK_TIMER1 2
#define TASK_TIMER1_START 3
#define TASK_TIMER1_READ 4
#define oneWireBus (gpio.2)
#define oneWireTris (trisio.2)
#define tm1637dio (gpio.4)
#define tm1637clk (gpio.5)
#define tm1637dioTris (trisio.4)
#define tm1637clkTris (trisio.5)
// refresh interval - time in ms divided by 262. Max value is 252.
#define TIMER_1_INTERVAL 114

// Hold the upper and lower bytes from the ds18b20
char cTempH = 0;
char cTempL = 0;
char iDecimalPosition = 2;

char oneWireIsPresent = 0;
char oneWireResetStage = 0;
void oneWireBusReset();
void oneWireTxByte(char data);
void oneWireTxBytes(char data, char data2);
char oneWireRxByte();

// Used for counting timer 1 overflows. 
// Initialise it close to interval so temp refresh on power on is near instant
char iTimer1Count = TIMER_1_INTERVAL - 4; 
char cTask = 0; // Used for task scheduler

// Used to output the segments from numbers
char tm1637MaxDigits = 4;
char tm1637DisplayNumtoSeg[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};
char tm1637Dot = 0x80;
char tm1637Brightness = 7; // 0 to 7
// 0x40 [01000000] = indicate command to display data
char tm1637ByteSetData = 0x40;
// 0xC0 [11000000] = write out all bytes
char tm1637ByteSetAddr = 0xC0;
// 0x88 [10001000] - Display ON, plus brightness
char tm1637ByteSetOn = 0x88;

// Copy of the data to write / on the display
char tm1637Data[] = {0, 0, 0, 0};

void tm1637Init();
void tm1637UpdateDisplay();
void tm1637StartCondition();
char tm1637ByteWrite(char bWrite);
void tm1637StopCondition();

void displayTemp();
void storeTempDigits4(int iValue);
void startTemp();
void readTemp();

#endif //_PIC12FTIMER1_H_
