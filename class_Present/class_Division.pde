class Division{
 // PImage candycane2;
 PImage tree;
  int rectW;
  PVector loc;
  
  Division(){
    rectW = 150;
    loc = new PVector (width/2 - rectW/2,0);
    // candycane2 = loadImage("candycane2.jpg");
    tree = loadImage("xmas tree.png");
  }
  
  void display(){
  image(tree, loc.x,loc.y,rectW,height);
  }
  
  void block(){
  if (mouseX >= width/2-rectW/2){
    mouseX = width/2 - rectW;                //Possible to make it more realistic?
  }
  
}

  
}
