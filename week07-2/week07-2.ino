//week07-2_arduino_blink
//安裝好後，Select Board要選剛剛裝置管理員的USB-Serial
void setup() {
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
}

void loop() {
  digitalWrite(12,LOW);
  digitalWrite(13,HIGH);
  delay(500);
  digitalWrite(13,LOW);
  digitalWrite(12,HIGH);
  delay(500);
}
