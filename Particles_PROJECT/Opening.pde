class Opening{
  //declare variables
  PVector loc1, loc2;
  float longness;
  float depth;
  
  Opening(float templongness){                       //set parameter of length of input
    //initialize variables
    longness= templongness;                        //set how long of input and output
    depth= 30;                                     //set the height of the input and output
    loc1 = new PVector(width,height);          //set location of input
    loc2 = new PVector(200,200);              //set location of output
  }
  
  void display(){                                  //displays the openings
    fill(0);
    ellipse(loc1.x,loc1.y,longness,depth);           //set input's location and size
    ellipse(loc2.x,loc2.y,longness,depth);          //set output's location and size
  }
  
  void transports(Present gift){                     //input transports presents to output
    if (loc1.dist(gift.loc) < depth/2 + gift.sz/2){  //if the gift "enters" the input...
      gift.loc.set(loc2);                            //...transport it to the output's location
      gift.vel.set(0,gift.vel.y);                    //gift shoots downward out the output at the speed it entered
    }
  }
  
  }
