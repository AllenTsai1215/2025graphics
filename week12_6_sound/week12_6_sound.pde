//week12_6_sound
//Sketch - Libary - Mannaged Libraries 找sound會看到 Sound | Provides a simple way to work with audio
//install
//安裝好後會有Files - Examples點開Libararies 核心函式庫 Sound
//Sound 那堆範例 看 SimplePlayback 簡單播放音樂的範例
import processing.sound.*;
SoundFile mySound;//抄範例，改變數名
void setup(){
  size(400,400);
  mySound = new SoundFile(this,"music.mp3");
  mySound.play();
}
void draw(){//要有空白 void draw()
  
}
