//week07-1_arduino_blink
//安裝好後，Select Board要選剛剛裝置管理員的USB-Serial
void setup() {
  
  pinMode(13,OUTPUT);
}

void loop() {
  digitalWrite(13,HIGH);
  delay(500);
  digitalWrite(13,LOW);
  delay(500);
}
