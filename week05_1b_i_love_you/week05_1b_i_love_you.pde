// week05_1b_i_love_you
size(300,300); //大小300x300
stroke(255,0,0); //紅色的線條
translate(width/2,height/2);
for(int xx=0;xx<300;xx++){  //大的x 0..300
  for(int yy=0;yy<300;yy++){ //大的y 0..300
    float x=  xx/100.0; //減一半、除100
    float y = -yy/100.0; //減一半、除100
    float d = x*x + y*y -1;
    if(d*d*d - x*x*y*y*y<0) point(xx,yy);
  } 
}
