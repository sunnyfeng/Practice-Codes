PVector rectvel,rectloc;
PVector ellivel, elliloc, elliacc;

void setup(){
  size(800,100);
  rectvel = new PVector(0,0);
  rectloc = new PVector (width-100,height-30);
  ellivel = new PVector (0,0);
  elliloc = new PVector (width/2,height-10);
  elliacc = new PVector (0,-.01);
}

void draw(){
  background(0);
  rectloc.add(rectvel);
  elliloc.add(ellivel);
  ellivel.add(elliacc);
  
  ellipse(elliloc.x,elliloc.y,20,20);

  rect(rectloc.x,rectloc.y,30,30);
  
  if (mousePressed){
    rectvel.set(-1,0);
    
    ellivel.set(0,-1);
    
    if (elliloc.y > height) {
      elliloc.y = 0;
    }
    }
      
   else{
    rectvel.x = 0;
  }
  
}

