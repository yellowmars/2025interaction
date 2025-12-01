//week13-1
//得到分數時，畫面閃一下
void setup(){
  size(600,300);
}
int score=0;
int countDown=0;
void draw(){
  if(countDown>0){
    countDown--;
      if(frameCount%10<3) background(255,255,0);
       else background(0);
  }else background(255);
  fill(0);
  ellipse(mouseX,mouseY,80,80);
  rect(550,100,50,100);
  if(countDown==0 &&550<=mouseX && 100<mouseY && mouseY<200){
     background(255,0,0); 
     score+=10;
     countDown=60;
  }
}
