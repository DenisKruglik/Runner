class Obstacle {
  
  float x, h, w;
  
  Obstacle() {
    this.x = random(width, 1.5*width);
    this.h = random(10, 200);
    this.w = random(10, 50);
  }
  
  void display() {
    rect(x, height - GROUND_HEIGHT - h, w, h);
  }
  
  void update() {
    x -= runSpeed;
    if(x + w < 0) {
      this.x = random(width, 1.5*width);
      this.h = random(10, 200);
      this.w = random(10, 50);
    }
  }
  
  boolean isInCollision(MainCharacter main) {
    
  }
}
