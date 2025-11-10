//week10-5-serial_joystick-to-processing
//修改自week10-4
//不使用Serial.println()
void setup() {
  Serial.begin(9600);
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);
}

void loop() {
  delay(30);
  int now=analogRead(A3)/4;
  Serial.write(now);//把0~255的值送出去
  if(now>200) tone(8,784,100);
  if(now<50) tone(8,523,100);

}
