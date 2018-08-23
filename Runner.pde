final float VERT_A = 0.5;
final float R = 30;
final float X = 40;
final float GROUND_HEIGHT = 40;

float runSpeed = 10;
float vertV = 0;

void setup() {
  size(800, 600, P2D);
  noFill();
  stroke(0);
}

void draw() {
  background(255);
  ellipse(X, GROUND_HEIGHT - R, R*2, R*2);
}

void keyPressed() {
  if(key == ' ') {
    
  }
}
