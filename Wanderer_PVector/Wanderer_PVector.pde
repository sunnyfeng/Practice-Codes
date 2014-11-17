PVector loc;
PVector vel;
PVector acc;
PVector sz;
//int sz= 50;

void setup(){
  size(800,600);
  loc = new PVector (random(width), random(height));

  vel = new PVector (0,0);
  
  sz = new PVector (random(1,50), random(1,50));
  
  colorMode(HSB,360,100,100,100);
  
  background(0);
}

void draw(){
  
 // background(0);
 
  noStroke();

  fill(frameCount%360, 100,100);
 
  acc =  new PVector (random(-.05,.05), random(-.05, .05));
  loc.add(vel);
  vel.add(acc);
  
  ellipse(loc.x,loc.y, sz.x,sz.y);
  
  if (loc.x - sz.x/2 > width){
    loc.x = -sz.x/2;
  }
  
  if (loc.x + sz.x/2 <0){
    loc.x = width+sz.x/2;
  }
  if (loc.y - sz.y/2 > height){
    loc.y= -sz.y/2;
  }
  if (loc.y + sz.y/2 <0){
    loc.y= height + sz.y/2;
  }
  
  
}
  
