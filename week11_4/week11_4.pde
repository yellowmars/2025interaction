//week11-4-pacman-part3
//小精靈張嘴
void setup(){
  size(500,500);
}
int x=250,y=250,dx=0,dy=0,dir=0;
float m=0,dm=0.05;
void draw(){
  background(0);
  fill(255,255,0);
  float m0=dir*PI/2;
  //ellipse(x,y,30,30);
  arc(x,y,30,30,+m0+m,m0+PI*2-m);
  x+=dx;
  y+=dy;
  if(m>=1|| m<0) dm=-dm;
  m+=dm;
}
void keyPressed(){
  if(keyCode==LEFT){dx=-1;dy=0;dir=2;}//向左 PI
  if(keyCode==RIGHT){dx=+1;dy=0;dir=0;}//向右 0度
  if(keyCode==UP){dx=0;dy=-1;dir=3;}//向上 PI*1.5
  if(keyCode==DOWN){dx=0;dy=+1;dir=1;}//向下 PI/2
}
