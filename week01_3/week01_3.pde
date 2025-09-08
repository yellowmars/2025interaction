//week01-3-keyPressedC-keyCode-left-right
void setup(){
  size(500,500);
}
int x=200,y=250;
void draw(){
  background(#FFFAAA);
  rect(x,y,100,50);
  if(keyPressed && keyCode==LEFT) x-=3;
  if(keyPressed && keyCode==RIGHT) x+=3;
}//使用方向鍵一動
