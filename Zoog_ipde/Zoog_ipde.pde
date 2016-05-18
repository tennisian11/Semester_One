//Ian McCarty
void setup() {
  //Set the size of the window
  size(1500,950);
}
void draw() {
  //Draw a white background
  background(#1D809D);
  zoog(mouseX,mouseY);
   
}

void zoog(int x, int y){
  // Set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  
  // Draw Zoog's body
  stroke(0);
  fill(#E024D4);
  rect(x,y,20,100);
  
  
  
  // Draw Zoog's head
  stroke(0);
  fill(#E024D4);
  ellipse(x,y-30,60,60);
  
  
  // Draw Zoog's eyes
  fill(0);
  ellipse(x-19,y-30,16,32);
  ellipse(x+19,y-30,16,32);
  
  
  // Draw Zoog's legs
  stroke(0);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
  //moon
  fill(#3A8310);
  ellipse(750,2001,3001,3001);
  //clouds
  fill(255);
  ellipse(100,100,75,50);
  ellipse(110,110,75,50);
  ellipse(120,100,75,50);
  ellipse(130,115,75,50);
  ellipse(140,95,75,50);
  ellipse(740,100,75,50);
  ellipse(750,110,75,50);
  ellipse(760,100,75,50);
  ellipse(770,115,75,50);
  ellipse(780,95,75,50);
  ellipse(400,100,75,50);
  ellipse(410,110,75,50);
  ellipse(420,100,75,50);
  ellipse(430,115,75,50);
  ellipse(440,95,75,50);
  
  //sun
  fill(#F0E61D);
  ellipse(1420,85,150,150);
  
}

