
class Particle{
  PVector loc,vel,acc;
  float sz;
  float life;
  float decay;
  
  Particle(){
    loc = new PVector(mouseX,mouseY);
    vel = new PVector(random(-2,2),random(-1,1));
    acc = new PVector(0,.1);
    sz = random(5,11);
    life = 255;
    decay = 200;
  }
  
  void move(){
    vel.add(acc);
    loc.add(vel);
  }
  
  void display(){
    stroke(0,170,255);
    fill(0,150,255,life);
    ellipse(loc.x,loc.y,sz,sz);
  }
  
  void aging(){
    life-=decay;
}
  
  void bounce(){
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }
  }
  
  void die(){
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    life-=decay;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    life-=decay;
  }
  }
  
  boolean isDead(){
    if (life <0){
      return true;
    } else{
      return false;
    }
  }
  
  //void paint(){
  // if (mousePressed){
  //   loc.set(mouseX,mouseY);
  //}
//}
}
  
  
  
  
  
  
  
  
  

