int count = 100;
BouncyBall [] b = new BouncyBall[count];
BlackHole bh;

void setup(){
  size(800,600);
  for (int i = 0; i < b.length; i++){
    b[i] = new BouncyBall(random(5,50), random(.5,10));
    bh = new BlackHole();
  }
}

void draw(){
  fill(0,50);
  rect(0,0,width,height);
 // background(200);
  for (int i = 0; i < b.length; i++) {
    b[i].display();
    b[i].move();
    b[i].wallBounce();
    bh.display();
    bh.eats(b[i]);
    for (int j = 0; j < b.length; j++) {
      if (i!=j) {
        b[i].collideWith(b[j]);
      }
    }
  }
}






