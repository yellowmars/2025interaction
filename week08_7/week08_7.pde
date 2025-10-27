//week08-7-2048-part5
//增加不同的板子 2,4,8,16,32,64
//(1)把陣列補齊(2)按方向鍵，要在空白的地方變出一個2
import processing.serial.*;
Serial myPort;
color[]c={#CEC2B9,#EFE5DA,#ECE1CA,#EFB37E,#EF7F63,#EF7F63};//2^1,2^2,2^3,2^6......2^6
color[]c2={#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5};
int[]N={0,2,4,8,16,32,64};//對應的數字
int[][]B={{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
void keyPressed(){
  if(keyCode==LEFT) myPort.write('L');
  if(keyCode==RIGHT){//按右
    myPort.write('R');
    for(int i=0;i<4;i++){
      int now=3;
      for(int j=3;j>=0;j--){//從右往左
        if(B[i][j]>0){//找到板子
          B[i][now]=B[i][j];
          while(now<3&&B[i][now+1]==B[i][now]){//檢查是否要合併
            //if(B[i][now+1]==B[i][now]){//與右邊相同
                B[i][now+1]++;//編號變大，新的板子出現
                now++;
          }
          now--;//下一格在這
        }
      }//到這結束，now的左邊不放東西，都歸零
      for(int j=now;j>=0;j--){
        B[i][j]=0;
      }
    }
   genTwo();
  }
}
void genTwo(){
   int zero=0;//找有幾個0
   for(int i=0;i<4;i++){
     for(int j=0;j<4;j++){
       if(B[i][j]==0) zero++;
     }
   }//用亂數決定第幾格要放0
   int ans=int(random(zero));
   for(int i=0;i<4;i++){
     for(int j=0;j<4;j++){
       if(B[i][j]==0){
         if(ans==0){
           B[i][j]=1;
           return;
         }else ans--;
       }
     }
   }
}
void setup(){
  myPort=new Serial(this,"COM5",9600);
  size(410,410); //讓邊線漂亮一點
}
void draw(){
  background(188,174,162);
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      int id=B[i][j];
      fill(c[id]);
      //fill(206,194,185);
      noStroke();//不要要有黑線外觀
      rect(j*100+10,i*100+10,90,90,5);//弧角是5
      fill(c2[id]);
      textAlign(CENTER,CENTER);
      textSize(60);
      text(N[id],j*100+55,i*100+55);
    }
  }
}
