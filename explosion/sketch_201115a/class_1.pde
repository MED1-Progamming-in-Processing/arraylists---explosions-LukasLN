class Circle {

  float x;
  float y;
  float xSpeed = random(-3, 3);
  float ySpeed = random(-3, 3);
  
  Circle(float x, float y){
    this.x = x;
    this.y = y;
  }

  
  void move() {
   //gravity
    ySpeed = ySpeed + 0.2;
   //speed
    x += xSpeed;
    y += ySpeed;
  }

  void display() {
   //Checks to see if what icon it should display 
    if(iCLICK == 1) {
    ellipse(x, y, 20, 20);
    }
    else if(iCLICK == 2) {
    rect(x, y, 20, 20);
    }
    else if(iCLICK == 3) {
    triangle(x, y, x + 20, y + 20, x -20, y + 20);
    }
  }
  
  boolean isOffScreen(){
    return x < 0 || x > width || y < 0 || y > height;
  }
}
