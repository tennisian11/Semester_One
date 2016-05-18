//Ian McCarty

void setup() {
}

void settings (){
  size(408,200);
}

void draw(){
  background(255);
  line(0,100,width,100);
  ellipse(mouseX,100,3,3);
  fill(0);
  text("U.S. Dollar = " + mouseX + "U.K. Pound = " +tempConverter(mouseX),50,50);
  text("Ian McCarty", 170,10);
  text("Slide mouse left to right for conversion", 180,190);
  text("40",35,95);
  text("80",75,95);
  text("120",110,95);
  text("160",150,95);
  text("200",190,95);
  text("240",230,95);
  text("280",270,95);
  text("320",310,95);
  text("360",350,95);
  text("400",390,95);
  for(int i = 0; i<width; i += 40) {
    line(i, 100, i, 96);
  }
}

float tempConverter(float f) {
  float c = (f*0.65);
  return c;
}