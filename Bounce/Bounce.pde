int x=5;
int y=10;

void setup(){
  size(500,500);
  fill(255,0,0);
}

void draw(){
  background(0,0,200);
  ellipse(x, height/2, x,x);
  x+=y;
  if (x>=width){
    fill(random(255),0,random(255));
    y=-5;
  }
  if (x<0){
    fill(random(255),random(255),0);
    y=10;
  }
}
