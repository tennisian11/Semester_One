void setup() {
}

void draw() {
  background(0);
  text(minusOne(mouseX),10,20);
  text(numCounter(mouseX),10,35);
  text(str(isPositive(mouseX)),10,50);
  text(converToPercent(mouseX),10,75);
}
// Next part is different
int minusOne(int n) {
  n-=1;
  return n;
}

int numCounter(int n) {
  n++;
  return n;
}
//also different
boolean isPositive(int n) {
  if (n>0) {
    return true;
  } else {
   return false; 
  }
}

float converToPercent (int n) {
  float num =n*0.01;
  return num;
}