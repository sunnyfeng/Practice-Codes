int n = 30;

void setup(){
  size(600,400);
  background(100,150,0);
  textAlign(CENTER);
  
}

void draw(){
  textSize(30);
  fill(0,0,200);
  
  if (n == 30){
    background(0);
  text("Hi Joe", width/2, height/2);
  }
  
  if (n== 90){
    background(0);
  text("Hi Sarah", width/2, height/2);
  }
  
  if (n==150){
    background(0);
  text("I have no creativity", width/2, height/2);
  }
  if (n == 210){
    background(0);
  text("So I have no idea what to write", width/2, height/2);
  }
   
  if (n == 270){
    background(0);
  text("So yeah", width/2, height/2);
  }
  
}

void mousePressed(){
  n += 60;
  
}

