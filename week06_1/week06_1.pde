//week06_1
//sketch-Library-manGElIBARIES,找Sound安裝它
//File-Examples-Libraries核心函式庫
import processing.sound.*;//使用聲音外掛模組
SoundFile sound;//宣告變數
void setup(){
   size(500,400);
   sound=new SoundFile(this,"music.mp3");
   sound.play();
}
void draw(){
  
}
