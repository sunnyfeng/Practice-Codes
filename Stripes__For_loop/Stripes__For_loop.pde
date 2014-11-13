
void setup (){
  size(500,500);
  background(0);
}

void draw (){
  background (0);
  for (int x=0; x<=width;x+=30){
    line(mouseX,mouseY,x,height);
    stroke(random(255),random(255),random(255));
    strokeWeight(10);
  }
  
//  for (int x=0; x<=height;x+=20){
 //   line(mouseY,mouseX,width,x);
 //   stroke(random(255),random(255),random(255));
 // }
  
  for (int x=0; x<=width;x+=30){
    line(mouseX,mouseY,x,0);
    stroke(random(255),random(255),random(255));
    strokeWeight(15);
  }

}
