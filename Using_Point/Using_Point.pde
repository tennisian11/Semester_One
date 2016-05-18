float xpos;
float ypos;
float strokeW;
float pointCount;
void setup() {
  background(random(100,255));
  size(500,500);
  xpos = random(width);
  ypos = random(height);
}
void draw() {
  strokeW = random(1,10);
  pointCount = random(1,20);
  stroke(random(10),random(100),random(200));
  if(xpos > width || xpos < 0 || ypos > height || ypos < 0) {
    xpos = random(width);
    ypos = random(height);
  } else {
    if (random(100)>70) {
      strokeWeight(strokeW);
      moveLeft(xpos,ypos,pointCount);
    } else 
    if (random(100)>65) {
      strokeWeight(strokeW);
      moveUp(xpos,ypos,pointCount);
      } else 
    if (random(100)>55) {
      strokeWeight(strokeW);
      moveDown(xpos,ypos,pointCount);
    } else {
      strokeWeight(strokeW);
      moveRight(xpos,ypos,pointCount);
    }
  }
}

void moveRight(float startX, float startY, float moveCount) {
  for(float i=0; i<moveCount; i++) {
    point(startX+i, startY);
    xpos = startX + i;
    ypos = startY;
  }
}