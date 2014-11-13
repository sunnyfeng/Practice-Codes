float x ,y,velY,velX,gravity, accX,sz;


void setup(){
  size(800,600);
  x= 0;
  y=0;
  sz=30;
  gravity=.75;
  accX= .01;
  velX= 0;
  velY=0;
 
}

void draw(){
  background(0);
  ellipse(x,y,sz,sz);
  
  velY+=gravity;
  velX+=accX;
  x+= velX;
  y+=velY;
  
  if (y + sz/2 >= height){
    velY= -abs(velY);
  }
  
  if (x+sz/2>= width){
    velX=-abs(velX);
  }
  
  if (x-sz/2<0){
    velX=abs(velX);
  }

  
}

