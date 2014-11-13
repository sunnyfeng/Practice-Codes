float x, y;

void setup() {
  x = 2;
  y =02;
  size(displayWidth, displayHeight);
}

void draw() {
  background(255);
  fill(random(255),random(255),random(255));
  ellipse(x, y, 20, 20);
  x = x*1.01;  
  y = y + 1;
}

