float x ,y,velY,velX,gravity,sz;


void setup(){
  size(800,600);
  sz=30;
  x= sz/2;
  y=sz/2;
  gravity=.75;
  velX= 5;
  velY=0;
 
}

void draw(){
  background(0);
  ellipse(x,y,sz,sz);
  
  velY+=gravity;
  x+= velX;
  y+=velY;
  
  if (y + sz/2 >= height){
    y=height-sz/2;
    velY*=-.9;
  }
  
  if (x+sz/2>= width || x-sz/2<=0){
    velX*=-0.9;
  }
}

