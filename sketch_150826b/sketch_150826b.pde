// Ian McCarty
//Collision Detector

// Declaring global variables
int xspeed, yspeed;
int xpos, ypos, wdth, ht;
void setup(){
  size(displayWidth, displayHeight);
  background(255);
  xspeed = -10;
  yspeed = -12;
  wdth = 10;
  ht = 10;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(60);
}
void draw(){
  //background(1);
  fill();
  ellipse(xpos, ypos, wdth, ht);
  ellipse(ypos, xpos, ht, wdth);
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >= width-wdth/2 || xpos <= wdth/2){
    xspeed *= -1; }
  if (ypos >= height-ht/2 || ypos <= ht/2){
    yspeed = yspeed * -1;
  }
  println(frameCount);
}
// The issue with the source code is one "if" is in the incorrect position. 
  


