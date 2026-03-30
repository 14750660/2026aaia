//week06-1 好玩的程式設計
//File-Preference設大字型
//修改自week05-2 好玩的程式設計 兩層for(迴圈)
//Ctrl-N 開新視窗
void setup() {
  size(800, 500);//視窗大小 800x500
}
int[][] a = new int[10][16];// Java 前陣列寫法 跟C/C++不同
void mousePressed() {
  int i = mouseY/50, j = mouseX/50;
  a[i][j] = 1;
}
void draw() {
  for (int i=0; i<10; i++) { //上週是 for y 現在改成for i 左手i
    for (int j=0; j<16; j++) { //上週是 for x 現在改成for j 右手j
      if (a[i][j]==1) fill(#F2BAF2);// 若陣列有值,設粉色
      else fill(255);//沒有值,設白色
      rect(j*50, i*50, 50, 50);// 畫四邊形
    }
  }
}
