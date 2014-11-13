/*
quadratic formula
x = (-b + sqrt(sq(b)-4*a*c))/ (2*a)
x = (-b - sqrt(sq(b)-4*a*c))/ (2*a)
*/

void setup(){
  size(800,800);
}

void draw(){
  answer(1,1,6);
  
}

void answer(float a, float b, float c){
  if (quad1(a,b,c) != quad2(a,b,c)){
    textSize(50);
    text("Your answers are" + quad1(a,b,c) + "and" + quad2(a,b,c),width/2, height/2);
  } else{
    text("Your answer is" + quad1(a,b,c), width/2, height/2);
  }
}


float quad1(float a, float b, float c);
  float x = (-b + sqrt(sq(b)-4*a*c))/ (2*a);
  return x;
  
  ///WHY DOESNT RETURN WORK
  }
  
float quad2(float a, float b, float c);
  float x = (-b - sqrt(sq(b)-4*a*c))/ (2*a);
  return x;
  }
