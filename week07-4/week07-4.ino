//week07-5
void setup() {
  //RGB LED最常那段，是接GND
 pinMode(3,OUTPUT);//最左邊的紅色
 pinMode(6,OUTPUT);//藍色
 pinMode(5,OUTPUT);//綠色(最外面)
}
//這些特別的角分別是3,5,6,9,10,11,共6個，都可以控制他的亮暗程度
void loop() {
  analogWrite(3,255);//亮的程度，是a的值
  a=(a+1)%256;//在亮一點
  delay(10);//每0.01秒

}
