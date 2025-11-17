//week11-5-pacman-part4
//小精靈張嘴
void setup(){
  size(600,600);
}
int x=300-15,y=300-15,dx=0,dy=0,dir=0;
float m=0,dm=0.05;
void draw(){
  background(0);
  for(int i=0;i<20;i++){//左手 y
    for(int j=0;j<20;j++){//右手 x
      fill(255);//白色豆子
      ellipse(15+j*30,15+i*30,5,5);
    }
  }
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
