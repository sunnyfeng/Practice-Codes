/*
pythagorean theorem
a^2 = b^2 + c^2
a= sqrt(b^2 + c^2)
provide b and c, gives a
*/

void setup(){
  size(500,500);
  textAlign(CENTER);
}

void draw(){
 background(0);
 textSize(30);
 text(pythagoras(3,4), width/2, height/2);
  
}

float pythagoras(float b , float c){
  float a = sqrt(sq(b)+sq(c));
  return a;
}
