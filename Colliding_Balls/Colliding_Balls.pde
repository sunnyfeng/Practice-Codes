int count = 1000;
PVector [] loc = new PVector [count];
PVector [] vel = new PVector [count];
PVector [] acc = new PVector [count];
float [] sz = new float [count];
//float sz = 20;

void setup(){
  size(800,600);
  background(0,0,30);
  for (int i = 0; i < count; i++){
    loc [i] = new PVector (random(width), random(height));
    
    vel [i] = PVector.random2D();
  
    acc [i] = new PVector (0,0);
    //acc [i] = new PVector (sin(i),0);
   
    sz [i] = random(2,4);
     
  }
  
}

void draw(){
  noStroke();
 fill(0,0,20,10);
  rect(0,0,width, height);
//  fill(0,0,30,15);
//  rect(width/2,0,width/2,height);
 
  
  
  //move
  for (int i = 0; i < count; i++){
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
  
  //bounce off each other
  for (int j = 0; j< count; j++){
    if (i!= j){
      if (loc[i].dist(loc[j]) < sz[i]/2 + sz[j]/2){
        print ( "COLLISION ");
        if (loc[i].x < loc[j].x){
          vel[i].x = -abs(vel[i].x);
          vel[j].x = abs(vel[j].x);
          //fill (255,0,0);
        } else {
          vel[i].x = abs(vel[i].x);
          vel[j].x = -abs(vel[j].x);
          //fill(0,255,0);
        }
        
         if (loc[i].y < loc[j].y){
          vel[i].y = -abs(vel[i].y);
          vel[j].y = abs(vel[j].y);
          //fill(255,0,0);
        } else {
          vel[i].y = abs(vel[i].y);
          vel[j].y = -abs(vel[j].y);
          //fill(0,255,0);
        }
      }
    }
  }

     fill(100,200,155);
     //fill(0,50,random(255));
        ellipse(loc[i].x, loc[i].y,sz[i],sz[i]);
   
   //bounce off wall
     if (loc[i].x + sz[i]/2 > width || loc[i].x - sz[i]/2 < 0) {
      vel[i].x *= -1;
      fill(255,0,0);
    }
    if (loc[i].y + sz[i]/2 > height || loc[i].y - sz[i]/2 < 0) {
      vel[i].y *= -1;
      fill(0,255,0);
      
  }
}
}


