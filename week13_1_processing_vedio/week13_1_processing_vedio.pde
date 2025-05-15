//week13_1_processing_vedio
// Sketch - Library - Manage Libraries... 安裝video
import processing.video.*; // Java使用外掛的 匯入
Capture video; //有用鏡頭用這個
Movie movie; //沒有鏡頭用這個
void setup(){
  size(640,960);
  //video = new Capture(this,640,480);
  //video.start();
  movie = new Movie(this,"street.mov");
  movie.loop();
}
void draw(){
  //if(video.available()) video.read();
  //image(vedio,0,480);
  if(movie.available()) movie.read();
  image(movie,0,0);
}
