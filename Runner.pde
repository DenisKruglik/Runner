final float GROUND_HEIGHT = 40;
final int OBSTACLES = 3;

float runSpeed = 10;
MainCharacter main;
Obstacle[] obstacles = new Obstacle[OBSTACLES];

void setup() {
  size(800, 600, P2D);
  noFill();
  stroke(0);
  main = new MainCharacter();
  for(int i = 0; i < OBSTACLES; i++) {
    obstacles[i] = new Obstacle();
  }
}

void draw() {
  background(255);
  line(0, height - GROUND_HEIGHT, width, height - GROUND_HEIGHT);
  main.display();
  for(Obstacle o: obstacles) {
    o.display();
    o.update();
  }
  main.update();
}

//void keyPressed() {
//  if(key == ' ') {
//    main.jump();
//    println("space pressed");
//  }
//}
