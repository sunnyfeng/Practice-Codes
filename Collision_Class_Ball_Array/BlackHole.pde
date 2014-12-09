class BlackHole{
  PVector loc;
  float sz;
  
  BlackHole(){
    noStroke();
    sz = 50;
    loc = new PVector(width/2, height/2);
  }
  
  void display(){
    fill(0,0,100);
    ellipse(loc.x, loc.y,sz,sz);
  }
  
  void eats(BouncyBall food){
    if (loc.dist(food.loc) < sz/2 + food.sz/2){
       food.loc.set(2*width,2*height);
       food.vel.set(0,0);
       sz+=food.sz/4;
    }
  }
}

