//Ian McCarty
//Button Test
void setup() {
  size (900,400);
}
void draw() {
  background(55);
  fill(255);
  textSize(30);
  text("Historic Computer System",50,50);
  stroke(255);
  line(75,225,825,225);
  line(85,175,125,225);
  line(250,175,275,225);
  line(375,175,425,225);
  line(525,175,575,225);
  line(145,225,130,300);
  line(325,225,300,300);
  line(500,225,450,300);
  line(650,225,600,300);
  strokeWeight(5);
  histEvent("ENIAC-1946","First electronic general purpose computer",50,150,100,40);
  histEvent("Z3 (computer)","World's first working programmable, automatic computer",200,150,100,40);
  histEvent("Colossus Mark 1 (UK)","1944 - Program-controlled by path cables and switches",350,150,100,40);
  histEvent("Harvard Mark I _ IBM ASCC (US)","1944 - Program-controlled by 24_channel punched \npaper tape",500,150,100,40);
  histEvent("Colossus Mark 2 (UK)","1944 - Program-controlled by path cables and switches ",100,300,100,40);
  histEvent("Zuse Z4 (Germany)","1945 - Program-controlled by punched \n35 mm film stock",250,300,100,40);
  histEvent("Zuse Z3","1941 - Program-controlled by punched \n35 mm film stock",400,300,100,40);
  histEvent("Manchester Mark 1 (UK)","1949 - Stored-program in Williams \ncathode ray tube memory and magnetic \ndrum memory",550,300,100,40);
  println("Y= " + mouseX);
  println("X= " + mouseY);
}
void histEvent(String btext, String dtext, int x, int y, int w, int h) {
  noStroke();
  fill(250,75);
  rect(x-5,y+5,w,h,10);
  fill(0);
  rect(x,y,w,h,10);
  fill(255);
  textSize(12);
  text(btext,x+20,y+20);
  if(mouseX>x && mouseX<=x+w && mouseY>y && mouseY<=y+h) {
    fill(255,0,0);
    text(dtext, 450,100);
}
}

