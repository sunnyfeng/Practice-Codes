float x;
float y;
float xspeed;
float yspeed;

void setup (){
  size(100,800);
  x=1;
  y=1;
  xspeed=1.01;
  yspeed=1.01;
}

void draw(){
  frameRate(100);
  background(100,0,100);


//number1
fill(random(255),random(255),random(255));
  ellipse(x,y,x,100);
 
  x+=xspeed;
  y+=yspeed;
  
   
 if(x>=width-20){
   xspeed=-1;
   fill(random(255),random(255),random(255));
 }
 
 if(x<=20){
   xspeed=1;
   fill(random(255),random(255),random(255));
 }
 
 if(y>=height-20){
   yspeed=-1;
   fill(random(255),random(255),random(255));
 }
   
 if(y<=20){
   yspeed=1;
   fill(random(255),random(255),random(255));
 }
 
 
 //number2
 fill(random(255),random(255),random(255));
  ellipse(100-x,800-y,100,x);
 
  x+=xspeed;
  y+=yspeed;
  
   
 if(x>=width-20){
   xspeed=-1;
   fill(random(255),random(255),random(255));
 }
 
 if(x<=20){
   xspeed=1;
   fill(random(255),random(255),random(255));
 }
 
 if(y>=height-20){
   yspeed=-1;
   fill(random(255),random(255),random(255));
 }
   
 if(y<=20){
   yspeed=1;
   fill(random(255),random(255),random(255));
 }
 
 
}
   
   
