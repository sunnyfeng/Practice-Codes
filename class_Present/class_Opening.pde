//CLASS OPENING
class Opening {
  //DECLARE
  PVector loc1, loc2;
  PVector vel1,vel2;
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

    //INPUT AND OUTPUT MOVES
    vel1 = new PVector(3, 0);
    vel2 = new PVector(-3,0);

    //SET IMAGE FOR CHUTE
    candycane = loadImage("candy cane.PNG");
  }

  //DISPLAYS OPENING
  void display() { 

    //RECTANGULAR CHUTE
    image(candycane, loc1.x-longness/2, loc1.y, longness, width-loc1.y);
    image(candycane, loc2.x-longness/2, 0, longness, loc2.y);

    //INPUT AND OUTPUT OPENING
    fill(0);
    ellipse(loc1.x, loc1.y, longness, depth);
    ellipse(loc2.x, loc2.y, longness, depth);
  }


  //MOVE AROUND SCREEN
  void catchMeIfYouCan() {
    loc1.add(vel1);
    loc2.add(vel2);
  }

  //BOUNCE BETWEEN WALL AND DIVISION
  void stopBy(Division d) {
    
    //INPUT
    if (loc1.x + longness/2 > d.loc.x || loc1.x -longness/2 <0 ) {
      vel1.x *= -1;
    }
    
    //OUTPUT
    if (loc2.x - longness/2 < d.loc.x + d.rectW || loc2.x + longness/2 > width) {
      vel2.x *= -1;
  }
}
}

