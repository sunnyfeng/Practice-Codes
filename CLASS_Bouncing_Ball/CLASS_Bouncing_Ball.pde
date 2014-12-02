int count = 200;

Ball[] b = new Ball [count];


void setup() {
  size(displayWidth, displayHeight);
  for (int i= 0; i < count; i++) {
    b[i] = new Ball();
  }
}

void draw() {
  background(0);
  for (int i= 0; i<count; i++) {
    b[i].move();
    b[i].wraparound();
    b[i].display();
  }
}

