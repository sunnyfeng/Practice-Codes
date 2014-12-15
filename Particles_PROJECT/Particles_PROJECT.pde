
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
    decay = 2;
  }
  
  void move(){
    vel.add(acc);
    loc.add(vel);
  }
  
  void display(){
    fill(0,150,255,life);
    ellipse(loc.x,loc.y,sz,sz);
  }
  
  void update(){
    life-=decay;
  }
  
  boolean isDead(){
    if (life <0){
      return true;
    } else{
      return false;
    }
  }
  
  void paint(){
   if (mousePressed){
     loc.set(mouseX,mouseY);
  }
}
}
  
  
  
  
  
  
  
  
  

