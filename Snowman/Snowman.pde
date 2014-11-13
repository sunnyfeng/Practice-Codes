float x;
float y;

void setup(){
  size(800,800);
  x=0;
  y=0;
}

void draw(){
  background(0,0,random(100,200));
   frameRate(150);
   if(x>=width-100){
     x=-100;
     y=0;
   }
   //head
  ellipse(x,y+275,100,100);
   //middle
  ellipse(x,y+height/2,150,150);
  //bottom
  ellipse(x,y+575,200,200);
  //ground
  rect(0,675,800,150);
 
 y=y-.5;
  x=x+1.;
  
  if(x>=width/2-50){
    y=y+1;
  }
}
