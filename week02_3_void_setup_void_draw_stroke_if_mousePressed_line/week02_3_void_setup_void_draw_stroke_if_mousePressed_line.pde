// week02_3_void_setup_void_draw_stroke_if_mousePressed_line
void setup(){ // 一開始,設定1次(貼上剛剛week02_2的程式)
  size(400,400);
  background(255);
  fill(238);
  noStroke();
  float s = 400/14; // 計算 每個格子的大小
  for(int i=0;i<14;i++){ //左手i 對應y座標
    for(int j=0;j<14;j++){ // 右手j 對應x座標
      //rect(0,i*s*2,s,s); //先試一下位置
      if( (i+j)%2==0 )rect(j*s,i*s,s,s);
    } //下面才是真的程式碼,完成畫格子的任務
  }
}
void draw(){ //每秒畫60次
  stroke(255,0,0); // 紅色的線
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
} //如果mouse按下去, 就畫線, 給兩個座標點:現在的mouse 和 之前的mouse
