class Car {
  color c;
  float x;
  float y;
  float speed; 
  float left;

  Car(color tempC, float tempX, float tempY, float tempSpeed) {
     c = tempC;
     x = tempX;
     y = tempY;
     speed = tempSpeed;
     left = random(2);
  }

  void display() {
    fill(c);
    rect(x, y, 30, 10);
  }

  void drive() {
   if (left <= 1) {
    x+= speed;
    if (x > width) {
      x = 0;
    }
   } else {
     
   }
    
    
    x = x + speed;
    if (x > width) {
      x = 0;
    }
  }
}