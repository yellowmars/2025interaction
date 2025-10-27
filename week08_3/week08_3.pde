//week08-3-2048-part3-void-keyPressed-genTwo
//增加不同的板子 2,4,8,16,32,64
//(1)把陣列補齊(2)按方向鍵，要在空白的地方變出一個2
color[]c={#CEC2B9,#EFE5DA,#ECE1CA,#EFB37E,#EF7F63,#EF7F63};//2^1,2^2,2^3,2^6......2^6
color[]c2={#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5};
int[]N={0,2,4,8,16,32,64};//對應的數字
int[][]B={{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
void keyPressed(){
  genTwo();
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
