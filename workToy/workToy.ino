// this workToy application was originally designed to work with a Particle (formerly Spark) Core
// microcontroller. Feel free to adopt and adapt this code to make your own workToy.
// More information about the project can be found on the author's website: 
// www.jintemp.com/creations/digital-toyl-box/workToy


// this is the LED built in to the sparkcore (next to the usb port)
int led = D7;

// this is pin the vibration motor (or other output) is connected to
int vibePin = D4;

// make variables to track the button
int button = 0; 
char publishString[40];

//make variables to track the time
unsigned long currTime;
unsigned long lastPlayTime;


void setup() {
//begin the serial connection so we can read messages from the core through a serial monitor
Serial.begin(9600);

//declare a variable so we can publish the button state to the cloud
Spark.variable("button", &button, INT);

//set the button pin to input
pinMode(D2, INPUT);

//set the vibe motor pin to output
pinMode(D4, OUTPUT);

//make sure the vibe motor starts off in LOW/off mode
digitalWrite(D4, LOW);

//initiate the lastPlayTime variable
lastPlayTime=0;
}

void loop() {
//record the current time (milliseconds since the program started)
currTime = millis();

//uncomment to print the current time to the serial port
//Serial.println(currTime);

//read pin D2 (the button pin) and record the state (0 or 1)
button = digitalRead(D2);

//publish the state of the button to the cloud
sprintf(publishString,"%u:%u:%u");
        Spark.publish("button",publishString);

//if the button circuit is not connected, 
if (button == 0) {
    //print to serial that the device is being played with 
    Serial.println("playing");
    //set the last play time to the current time
     lastPlayTime = currTime;
}
//if the button circuit is connected, 
else if (button == 1) {
     //print to serial that the device is on the dock
     Serial.println("thoughtBlocks are on the dock");
     // if it’s been more than 60 minutes since workToy has been played with,
     if (currTime-lastPlayTime>3600000){
        // print a message to the serial port 
         Serial.println("play with workToy!");
        //turn the vibe motor on for two seconds, then turn it off        
        digitalWrite(vibePin, HIGH);
        delay(2000);
        digitalWrite(vibePin, LOW);
        // reset the timer 
        lastPlayTime = currTime;
        }
    }
}
