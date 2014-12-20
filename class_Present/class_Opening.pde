class Opening {
  //declare variables
  PVector loc1, loc2;
  float longness;
  float depth;
  PImage candycane;

  Opening(float templongness) {                       //set parameter of length of input
    //initialize variables
    longness= templongness;                        //set how long of input and output
    depth= 20;                                     //set the height of the input and output
    loc1 = new PVector(width/5, 7*height/8);          //set location of input
    loc2 = new PVector(7*width/8, height/5);              //set location of output
    candycane = loadImage("candy cane.PNG");
  }

  void display() {                                  //displays the openings
    image(candycane,loc1.x-longness/2,loc1.y,longness,width-loc1.y);        //make chute
    image(candycane,loc2.x-longness/2,0,longness,loc2.y);                      //^
    fill(0);
    ellipse(loc1.x, loc1.y, longness, depth);           //set input's location and size
    ellipse(loc2.x, loc2.y, longness, depth);          //set output's location and size
  }

  //  void transports(Present gift){                     //input transports presents to output
  //    if (loc1.dist(gift.loc) < depth/2 + gift.sz/2){  //if the gift "enters" the input...
  //      gift.loc.set(loc2);                            //...transport it to the output's location
  //      gift.vel.set(random(-1,1),gift.vel.y);                    //gift shoots downward out the output at the speed it entered
  //    }
  //  }


//  void transports(PresentSystem sys) {
//    for (int i = sys.presents.size () - 1; i>= 0; i--) {
//      Present p = sys.presents.get(i);
//      if (loc1.dist(p.loc) < depth/2 + p.sz/2) {          //if the gift "enters" the input...
//        p.loc.set(loc2);                                      //...transport it to the output's location
//        p.vel.set(random(-1,1), p.vel.y);                              //gift shoots down out the output at the speed it entered
//      }
//    }}
}

