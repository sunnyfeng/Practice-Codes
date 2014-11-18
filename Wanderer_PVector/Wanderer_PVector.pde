PVector loc;
PVector vel;
PVector acc;
//PVector sz;
int sz= 50;
float x = 0;

void setup(){
  size(800,600);
  loc = new PVector (sin(x),cos(x));

  vel = new PVector (tan(x),cos(x));
  
  //sz = new PVector (random(1,50), random(1,50));
  
  colorMode(HSB,360,100,100,100);
  
  background(0);
}

void draw(){
  
 // background(0);
 
 x++;
  noStroke();

  fill(frameCount%360, 100,100);
 
  acc =  new PVector (random(-.05,.05), random(-.05, .05));
  loc.add(vel);
 vel.add(acc);
  
  ellipse(loc.x,loc.y, sz,sz);
  
  if (loc.x - sz/2 > width){
    loc.x = -sz/2;
  }
  
  if (loc.x + sz/2 <0){
    loc.x = width+sz/2;
  }
  if (loc.y - sz/2 > height){
    loc.y= -sz/2;
  }
  if (loc.y + sz/2 <0){
    loc.y= height + sz/2;
  }
  
  
}
  
