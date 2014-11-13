void setup(){
  size(800,800);
}

void draw(){

 for(float x = 0; x<=width*2;x+=50){
   frameRate(200);
   stroke(random(255),random(255),random(255));
  line(random(width),random(height),mouseX,mouseY);
   strokeWeight(20);
 } 
}
