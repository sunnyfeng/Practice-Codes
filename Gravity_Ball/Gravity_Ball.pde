float x ,y,velY,velX,gravity,sz;    //initiate variables


void setup(){
  size(800,600);                    //size of screen
  sz=30;                            //size of ball
  x= sz/2;                          //start position of ball
  y=sz/2;
  gravity=.75;                      //gravity (acc in y direction)
  velX= 5;                          //start velocities
  velY=0;
 
}

void draw(){
  background(0);
  ellipse(x,y,sz,sz);               //ball
  
  velY+=gravity;                    //velocity increases by gravity
  x+= velX;                         //position increases by velocity
  y+=velY;
  
  if (y + sz/2 >= height){          //bounce off ground
    y=height-sz/2;
    velY*=-.9;
    fill(0,255,0);
  }
  
  if (x+sz/2>= width || x-sz/2<=0){ //bounce off walls
    velX*=-0.9;
    fill(0,0,255);
  }
}

