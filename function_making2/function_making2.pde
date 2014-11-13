
void setup(){
  size(800,600);
  frameRate(10);
}

void draw(){
  background(0);
  for (int i = 0; i < randomInt(1, width-50); i++){
    fill(random(255), random(255), random(255),45);
    ellipse(i*25, 50, 50,50);
  }
 
  
  
}

int randomInt(float min, float max){
  float rand = random(min,max);
  int result = int(rand);
  return result;
}

