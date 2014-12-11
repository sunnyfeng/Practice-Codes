ArrayList <BouncyBall> balls = new ArrayList <BouncyBall>();
int maxBalls = 200;

void setup(){
  size(800,600);
       background(0);
    balls.add(new BouncyBall(30,3));
      fill(255,0,0);
      textSize(50);

}

void draw(){
 background(0);
 text(balls.size(),width/10,height/10);
for (int i = 1; i < balls.size(); i++){
      BouncyBall b = balls.get(i);
    b.display();
    b.move();
    b.wallBounce();
}
  fill(255);
  if (balls.size() > maxBalls){
    balls.remove(0);
  }
}


void mousePressed(){
balls.add( new BouncyBall(30,3));
  
}

