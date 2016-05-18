//Ian McCarty

void setup() {
  size(1000, 1000);
}
void draw() {
  background(128);
  drawGrid();
  noLoop();
}
void drawGrid() {
  for (int i=25; i<=width; i+=25) {
    line(0, i, width, i);
  line(i, 0, i, height); 
  textSize(10);
  text(i,5,i+4);
  text(i,i-6,10);}
}

