class MainCharacter {
  final float VERT_A = 0.5;
  final float JUMP_START = -15;
  final float R = 30;
  final float X = 40;
  
  float vertV = 0;
  float y = height - GROUND_HEIGHT;
  boolean isInJump = false;
  
  void display() {
    ellipse(X, y - R, R*2, R*2);
  }
  
  void update() {
    if(isInJump) {
      y += vertV;
      vertV += VERT_A;
    } else if(keyPressed && key == ' ') {
      jump();
    }
    
    if(vertV > 0 && y >= height - GROUND_HEIGHT) {
      isInJump = false;
      //vertV = 0;
      y = height - GROUND_HEIGHT;
    }
  }
  
  void jump() {
    if(!isInJump) {
      isInJump = true;
      vertV = JUMP_START;
    }
  }
}
