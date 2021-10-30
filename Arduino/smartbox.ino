#include <Servo.h>
#define trig 13
#define eco 12
#define led 7
Servo servo;
int angle=0;

void setup() {
  servo.attach(11);
  servo.write(angle);
  Serial.begin (9600);
  pinMode(trig,OUTPUT);
  pinMode(eco,INPUT);
  pinMode(led,OUTPUT);
  
}

void loop() {
  digitalWrite(trig,HIGH);
  delayMicroseconds(10);
  digitalWrite(trig,LOW);
  long tim=pulseIn(eco,HIGH)/2;
  long dist=tim*0.034;
  

  if(dist<10){
    digitalWrite(led,HIGH);
    for(angle=0;angle<180;angle++){
      servo.write(angle);
      delay(1);
      Serial.println("ON");
    }
    delay(2000);
    for(angle=180;angle>0;angle--){
      servo.write(angle);
      delay(1);
    }
    delay(1000);
  }
  else {
    Serial.println("OFF");
    digitalWrite(led,LOW);
  }

}