//week14_9b_ik_inverse_kinematics_part8
//最簡單的線段,來解真的ID運算
void setup(){
  size(400,400);
  for(int i=0;i<N;i++){
    p[i] = new PVector(200, 350-L*i);
  }
}
int N = 20, L = 300/N; //本來是6點,距離50
PVector [] p = new PVector[N];//6個頂點
void draw(){
  background(255);
  for(int i=0; i<N; i++){//用迴圈 畫點、加字
    if(i>0)line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);//紅色的圈圈
    ellipse(p[i].x, p[i].y,8,8);
    fill(0);//黑色的字
    text("p:"+i, p[i].x+10,p[i].y);//字往右一點點
  }
  p[N-1].x = mouseX; //照著mouse位置,把最後的點移過去
  p[N-1].y = mouseY;
  for(int i=N-2;i>0;i--){
    PVector v = PVector.sub(p[i+1],p[i]).normalize().mult(L);//短向量
    //因為長度限制為50, 所以長向量長度 先變為1 再乘上50
    p[i].x = p[i+1].x - v.x;//新位置,是中心,再加長度50
    p[i].y = p[i+1].y - v.y;//新位置,是中心,再加長度50
    
  }
  for(int i=1; i<N;i++){
    PVector v = PVector.sub(p[i],p[i-1]).normalize().mult(L);
    p[i].x = p[i-1].x + v.x;//新位置,是中心,再加長度50
    p[i].y = p[i-1].y + v.y;//新位置,是中心,再加長度50
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠的點
  //line(p[4].x, p[4].y,mouseX,mouseY);
}
