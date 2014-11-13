int i = 0;

float [] x = {random (800), random (800),random (800),random (800),random (800)};
float [] y = {random (800), random (800),random (800),random (800),random (800)};
float [] sz = {random(20,100),random(20,100),random(20,100),random(20,100),random(20,100)};
int [] xspeed = { 1, 2, -1,-2, 1};
int [] yspeed = {2, -1, 1, 1, 2};

void setup(){
  size ( 800, 800);
}


void draw(){
  
   background( 0,200,100);
   
  for ( int i = 0 ; i < x.length; i ++){
    ellipse( x[i], y [i], sz[i], sz[i]);
 
  x [i] += xspeed [i];
  y [i] += yspeed [i];
  
  if ( x[i] + sz[i]/2 > width || x[i] - sz[i]/2 < 0){
    xspeed[i] *= -1;
    fill (random(255), random(255), random(255));
  }
  
    if ( y[i] + sz[i]/2 > height || y[i] - sz[i]/2 < 0){
    yspeed[i] *= -1;
    fill (random(255), random(255), random(255));
  }
  
  }
  
  
}
