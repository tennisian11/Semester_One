// Ian McCarty
//Collision Detector
int xspeed, yspeed;
int xpos, ypos, wdth, ht;
void setup(){
  size(2000, 1000);
  background(0);
  xspeed = -10;
  yspeed = -12;
  wdth = 20;
  ht = 20;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(60);
}
void draw(){
  //background(255);
  fill(255, 50, 50, 50);
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
