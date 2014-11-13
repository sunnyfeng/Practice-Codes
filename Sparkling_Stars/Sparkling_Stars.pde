float sz;

void setup (){
 size(1500,900); 
}

void draw (){
  fill(0,10);
  rect(0,0,width,height);
  sz=random(2,7);
  fill(255,255,0);
  ellipse(random(width),random(height), sz,sz);
 // ellipse(random(mouseX-50, mouseX+50), random(mouseY-50, mouseY+50),sz,sz);
}
