// week02_7_keyPressed_if_key_s_for_for_println_vertex_beginShape
// 想要把畫
ArrayList<Integer> x,y; // 先有2個還沒準備好的資料結構,等mousePressed再新增準備
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>(); //大的資料結構
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("cute.png"); //每次新的檔案,要再把圖「拉進來」
} //記得記圖檔,向上週一樣 拉到程式裡
void draw(){
  background(img);
  fill(255,200); //半透明的色彩 白色, alpha值是128
  rect(0,0,400,400); // 畫超大的四邊形,全部蓋住
  // 上面是week02_4, 下面用迴圈,從資料結構取出來
  for(int I=0;I<xx.size();I++){ //大寫I 對應大的資料結構
   ArrayList<Integer> x = xx.get(I); //取出裡面小的資料結構
   ArrayList<Integer> y = yy.get(I);
   for(int i=1;i<x.size();i++){ //小的在照舊畫
     line(x.get(i),y.get(i),x.get(i-1),y.get(i-1)); 
   }
  }
}
void keyPressed(){
  if(key=='s' || key=='S'){ //如果按下英文的小寫 or 大寫 S 想save存檔的話
    for(int I=0;I<xx.size();I++){ //大寫I 對應大的資料結構
      ArrayList<Integer> x = xx.get(I); //取出裡面小的資料結構
      ArrayList<Integer> y = yy.get(I);
      println("beginShape();");
      for(int i=1;i<x.size();i++){ //小的在照舊畫
        println("vertex("+(x.get(i))+", "+ y.get(i)+ ");");
       } // 改在keyPressed() 按下s或S時,再全部印
       println("endShape();");
    }
  }
}
void mouseDragged(){
  //println("vertex("+mouseX+", "+ mouseY+ ");"); //不要在這裡印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
