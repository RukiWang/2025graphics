// week14_1_PFont_createFont_textSize_text
// 學過了 PImage PVector P...
size(300,300);
textSize(50);
text("Hello",10,50); //預設字型
PFont font = createFont("Times New Roman",50);
textFont(font); //換字型
text("Hello",10,100);
//print(PFont.list()); //列出現在所有可用的字型
//改用for迴圈,把全部的字型 分行列出來
for(String name : PFont.list()) println(name);
