int count = 1000;
PVector [] loc = new PVector [count];
PVector [] vel = new PVector [count];
PVector [] acc = new PVector [count];
float [] mass = new float [count];
float [] sz = new float [count];
int mindiam = 10;
int maxdiam = 20;

void setup(){
  size(800,600);
  background(0,0,30);
  for (int i = 0; i < count; i++){
    loc [i] = new PVector (random(width), random(height));
    
    vel [i] = PVector.random2D();
  
    acc [i] = new PVector (0,0);
    //acc [i] = new PVector (sin(i),0);
   
    sz [i] = random(2,4);
    
    mass[i] = map(sz[i],mindiam,maxdiam,.1,2);
     
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
       vel[i] = PVector.sub(loc[i],loc[j]);
       vel[i].setMag(2);
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


