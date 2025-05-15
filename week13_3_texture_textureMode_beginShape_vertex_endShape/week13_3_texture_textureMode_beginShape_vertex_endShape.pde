// week13_3_texture_textureMode_beginShape_vertex_endShape
// 先教 貼圖 ,再加進去
PImage img;
void setup(){
  size(400,400,P3D); //要加 P3D才有OpenGL 3D功能
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
}
void draw(){
  background(128); //灰背景
  beginShape();
  texture(img);
  vertex(40,80,0,0);
  vertex(320,20,1,0);
  vertex(380,360,1,1);
  vertex(160,380,0,1);
  endShape();
}
