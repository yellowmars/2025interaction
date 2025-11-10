//week10=2-arduino-pin2-switch
void setup() {
  pinMode(2,INPUT_PULLUP);//拉高，變成5v按下去變0v
  pinMode(8,OUTPUT);
  //pin 2變成按鈕可以HIGH高，可以LOW低

}

void loop() {
  if(digitalRead(2)==LOW){//如果 pin2有按
    tone(8,523,100);//發出do
    delay(100);
    tone(8,784,100);//發出so
    delay(100);
  }
}
