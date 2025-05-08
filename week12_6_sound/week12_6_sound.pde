// week12_6_sound
// 要有聲音,需要聲音的Library函式庫 (mp3,wav,wma)
// Sketch - Library - Managed Libraries 找sound會看到
// 會看到 Sound | Provides a simple way to work with audio
// 選它,右下角 Install 下載安裝(會有小勾勾)
// 安裝好Sound後,會有File - Examples 點開 Libraries核心函式庫 Sound
// Soundfile 那堆範例 看 SimplePlayback 簡單播放音樂的範例
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400,400);
  mySound = new SoundFile(this, "music.mp3");
  mySound.play();
}
void draw(){ //記得要有個空的draw()函式 才會持續更新

}
