// week14-1 好玩的程式設計 真的有地鼠
// File-Preference 字型放大
PImage img; // (圖片物件)變數宣告
void setup() {
  size(300, 300); //視窗大小
  img = loadImage("gopher.png"); //讀入圖片(放入變數)
}
int [][]a = { {0,0,0}, {0,0,0}, {0,0,0} }; // Java的陣列
void draw() {
  background(#FFFFF2); //淡黃色
  if (frameCount%60==0) { //每過1秒 要挑一隻地鼠跳起來
    int i = int(random(3)), j = int(random(3)); //亂數地鼠
    a[i][j] = 60;
  }
  for (int i=0; i<3; i++) { //左手i 對應y座標
    for (int j=0; j<3; j++) { //右手j 對應x座標
      float x = j*100, y = i*100; //換算座標
      y-= 100 * sin(a[i][j]*PI/60); // y+= mouseY; 
      if(a[i][j]>0) a[i][j]--; 
      image(img, x, y, 100, 100); //在(x,y)畫出100x100的圖
    }
  }
}
