class Opening {
  //declare variables
  PVector loc1, loc2;
  float longness;
  float depth;
  PImage candycane;

  Opening(float templongness) {                       //set parameter of length of input
    //initialize variables
    longness= templongness;                        //set how long of input and output
    depth= 10;                                     //set the height of the input and output
    loc1 = new PVector(width/5, 7*height/8);          //set location of input
    loc2 = new PVector(3*width/4, height/5);              //set location of output
    candycane = loadImage("candy cane.PNG");
  }

  void display() {                                  //displays the openings
    image(candycane,loc1.x-longness/2,loc1.y,longness,width-loc1.y);        //make chute
    image(candycane,loc2.x-longness/2,0,longness,loc2.y);                      //^
    fill(0);
    ellipse(loc1.x, loc1.y, longness, depth);           //set input's location and size
    ellipse(loc2.x, loc2.y, longness, depth);          //set output's location and size
  }

}

