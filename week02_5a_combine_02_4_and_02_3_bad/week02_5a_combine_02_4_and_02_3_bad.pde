// week02_5a_combine_02_4_and_02_3_bad
// 要描圖,卻出錯
PImage img;
void setup(){
  size(400,400);
  img = loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255,mouseX); //半透明的色彩 白色, alpha值是128
  println(mouseX); // 把 nouseX 的值,在下面「小黑」印出來
  rect(0,0,400,400); // 畫超大的四邊形,全部蓋住
  // 上面是week02_4, 下面是 week02_3 但線無法畫上去
  stroke(255,0,0); // 紅色的線
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
