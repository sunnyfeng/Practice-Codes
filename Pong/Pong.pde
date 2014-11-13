int x,y,sz;
float xspeed=2;
float yspeed=4;


void setup(){
  size(800,600);
  x=width/2;
  y=height/2; 
  sz=10;
 
}

void draw(){
  background (0);
  fill(255);
  rect(width-10, mouseY,10,40);
 

  ellipse(x,y,sz,sz);
 
  x+= xspeed;
  y+= yspeed;
  
  if (x +sz/2 >= width || x - sz/2 <= 0){
    xspeed*=-1;
  }
  
  if(y+ sz/2>= height || y -sz/2 <=0){
    yspeed*=-1;
  }
 
  
}
