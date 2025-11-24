//week12-5-coins
//接金幣
PImage imgCoin;
void setup(){
  size(300,500);
  imgCoin=loadImage("coin.png");
}
float x=0,y=0;
void draw(){
  background(255);
  image(imgCoin,x,y,100,100);
  y+=3;
}
