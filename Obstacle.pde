class Obstacle {
  
  float x, h, w;
  
  Obstacle() {
    this.x = random(width, 5*width);
    this.h = random(10, 50);
  }
  
  void display() {
    rect(x, GROUND_HEIGHT - h, w, h);
    if(x + w < 0) {
      this.x = random(width, 5*width);
      this.h = random(10, 50);
    }
  }
}
