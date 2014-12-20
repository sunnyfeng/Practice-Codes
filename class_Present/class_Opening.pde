class Opening {
  //DECLARE
  PVector loc1, loc2;
  float longness;
  float depth;
  PImage candycane;

//CONSTRUCTOR WITH LENGTH PARAMETER
  Opening(float templongness) { 
    
    //INITIALIZE VARIABLES
    longness= templongness;
    depth= 10;
    
    //LOCATIONS OF INPUT AND OUTPUT, RESPECTIVELY
    loc1 = new PVector(width/5, 7*height/8);
    loc2 = new PVector(3*width/4, height/5); 
    
    //SET IMAGE FOR CHUTE
    candycane = loadImage("candy cane.PNG");
  }

//DISPLAYS OPENING
  void display() { 
    
    //RECTANGULAR CHUTE
    image(candycane,loc1.x-longness/2,loc1.y,longness,width-loc1.y);
    image(candycane,loc2.x-longness/2,0,longness,loc2.y);
    
    //INPUT AND OUTPUT OPENING
    fill(0);
    ellipse(loc1.x, loc1.y, longness, depth);
    ellipse(loc2.x, loc2.y, longness, depth); 
  }

}

