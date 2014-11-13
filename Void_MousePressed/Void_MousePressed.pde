int running= 1;
float sz;


void setup(){
  size(1500,800);
  background(0);
  textAlign(CENTER);
}

void draw(){
  if (running==1){
    fill(0,10);
    rect(0,0,width,height);
    sz=random(5,10);
    fill(255,255,0);
    ellipse(random(width),random(height), sz,sz);
  } else{
    background (0);
    textSize(50);
    text("Game Over! Click to start again", width/2,height/2);
    }
  
}

void mousePressed(){
  background(0);
  running*=-1;

}
  
