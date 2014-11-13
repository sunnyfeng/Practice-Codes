int x,y, xsize=1,ysize=1;

void setup(){
  size(800,600);
}

void draw(){
  if (mousePressed){
    background(0);
    fill(255,0,0);
    ellipse(width/2, height/2, x*y/3, y);
    x+=xsize;
    y+=ysize;
  } else{
    background(0);
    fill(0,255,0);
    ellipse(width/2, height/2, x*y/3, y);
    x-=xsize;
    y-=ysize;
    if (x*y/3 > width){
      xsize*=-xsize;
      ysize*=-ysize;0
  }
}
}
