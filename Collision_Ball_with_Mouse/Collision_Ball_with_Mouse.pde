PVector loc, vel, acc;
PVector mouse;
int sz = 100;

void setup(){
  size(800,600);
  loc = new PVector (width/2, height/2);
  vel = PVector.random2D();
  vel.mult(5);
  acc = new PVector (0,0);
  mouse = new PVector();
  
}

void draw(){
  mouse.set(mouseX, mouseY);
  background(0);
  
  //ball moves
  vel.add(acc);
  loc.add(vel);
  
  //mouse in circle
  if (loc.dist(mouse) < sz/2){
    fill (255,0,0);
    if (loc.x < mouse.x){
      vel.x = -abs(vel.x);
    } else{
      vel.x = abs(vel.x);
    }
    if (loc.y < mouse.y){
      vel.y = -abs(vel.y);
    } else{
      vel.y = abs(vel.y);
    }
  } else {
  fill (0,200,55);
  }
  
  //make ball
  ellipse(loc.x, loc.y, sz,sz);
  
  //bounce ball
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }
  
}

