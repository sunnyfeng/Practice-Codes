int count = 100;
BouncyBall [] b = new BouncyBall[count];

void setup(){
  size(800,600);
  for (int i = 0; i < b.length; i++){
    b[i] = new BouncyBall(random(5,50), random(.5,10));
  }
}

void draw(){
  background(0);
  for (int i = 0; i < b.length; i++) {
    b[i].display();
    b[i].move();
    b[i].wallBounce();
    for (int j = 0; j < b.length; j++) {
      if (i!=j) {
        b[i].collideWith(b[j]);
      }
    }
  }
}





class BouncyBall {
  PVector loc, vel;
  float sz;
  float speed;
  
  BouncyBall(float tempsz, float tempspeed){
    sz = tempsz;
    loc = new PVector(random(sz,width-sz), random(sz,height-sz));
    vel = PVector.random2D();
    speed = tempspeed;
    vel.mult(speed);
  }
  
  void display(){
    ellipse(loc.x, loc.y,sz,sz);
  }
  
  void move(){
    loc.add(vel);
  }
  
  void wallBounce(){
    if (loc.x + sz/2 >width || loc.x - sz/2 <0 ){
      vel.x*= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 <0){
      vel.y*=-1;
    }
  }
  
  
  void collideWith(BouncyBall someOtherBall){
    if (loc.dist(someOtherBall.loc) < sz/2 + someOtherBall.sz/2){
      vel = PVector.sub(loc, someOtherBall.loc);
      //vel.normalize();
      vel.setMag(speed);
    }
  }
}
