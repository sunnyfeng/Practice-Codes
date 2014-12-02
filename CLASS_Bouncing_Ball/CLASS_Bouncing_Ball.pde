ArrayList<Ball> balls = new ArrayList<Ball>();


void setup() {
  size(displayWidth, displayHeight);
}

void draw() {
  balls.add(new Ball());
  background(0);
  for (int i= 0; i<balls.size (); i++) {
    Ball b = balls.get(i);
    b.move();
    b.display();
    if (b.loc.y + b.sz/2 > height) {
      balls.remove(i);
    }
  }
}

