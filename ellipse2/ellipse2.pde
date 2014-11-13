int x;

void setup(){
  size(800,800);
  x=0;
}

void draw(){
 frameRate(10);
  background(random(255),0,random(255));
  fill(random(255),0,0);
 ellipse(x,x,x/3,x/3);
 fill(random(255),0,0);
  ellipse(800-x,800-x,x/3,x/3);
  fill(0,random(255),0);
  ellipse(800-x,x,x/3,x/3);
 fill(0,random(255),0);
 ellipse(x,800-x,x/3,x/3);
  x=x+4;
  
 fill(random(255),random(255),random(255));
ellipse(x,height/2,x/2,x/2);
 ellipse(width/2,x,x/2,x/2);
ellipse(800-x,height/2,x/2,x/2);
ellipse(width/2,800-x,x/2,x/2);
  
}

