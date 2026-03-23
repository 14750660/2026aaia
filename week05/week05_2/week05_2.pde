// week05-2 好玩的程式設計
// Ctrl-N 開新視窗
void setup(){
  size(800,500);
}
void draw() {
  for (int y=0; y<500; y+=50) {
    for (int x=0; x<800; x+=50) {
      if(x< mouseX && mouseY <x+50) fill(#FAC0E7);
      else if (y < mouseY && mouseY < y+50) fill(#FAC0E7);
      else fill(255);
    rect(x, y, 50, 50);
   }
  }
}
