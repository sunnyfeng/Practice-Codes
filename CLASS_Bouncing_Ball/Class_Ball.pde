class Ball{
  //declare
  PVector loc, vel, acc;
  float sz;
  float hue;
  
  Ball(){
    //initialize
    loc = new PVector(mouseX,mouseY);
    vel = new PVector(random(-3,3),random(-1,0));
    acc = new PVector(.001, .1);
    sz = random(10, 100);
    hue = random(360);
  }
  
  void wraparound(){
    if (loc.y -sz/2 > height){
      loc.set(mouseX,mouseY);
      vel.set(random(-3,3),random(-1,0));
    }
  }
  
  void bounce(){
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }
  }
  
  void move(){
    vel.add(acc);
    loc.add(vel);
    
  }
  
  void display(){
    fill(hue, 100, 100, 100);
    ellipse(loc.x, loc.y, sz, sz);
  }
    
  }
  
  
  
  
  
  
