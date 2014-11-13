int diam=height;
int x=0;
int count = 0;

void setup () {
  size(800,800);
}


void draw(){
  while(x<=width){
    fill(random(255),random(255),random(255));
    ellipse(x, height/2, 50,50);
    x+=50;

  }
  
 
}
