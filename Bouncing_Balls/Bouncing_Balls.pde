float x=1.;
float xspeed=1.;
float y= 1.;
float yspeed=1.;


void setup(){
  size(200,500);
}

void draw(){
  background(0,0,200);
 ellipse(x,y,40,40);
 x+= xspeed;
 y+= yspeed;
 
 if (x>= width){
   fill(255,0,0);
    xspeed= -1.;
 }
 
 if (x<0){
   fill(100,100,0);
   xspeed= 1.;
 }
 
 if (y>=height){
   fill(0,255,0);
   yspeed=-1.;
 }
 
 if (y<=0){
   fill(200,0,200);
   yspeed=1.;
 }
}
 
 
 
 
