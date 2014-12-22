class Division {

  // PImage candycane2;

  //DECLARE
  // PImage tree;
  PImage cane;
  int rectW;
  PVector loc;

  Division() {
    //INITIALIZE

    //SET DIVISION WIDTH AND LOCATION
    rectW = 150;
    loc = new PVector (width/2 - rectW/2, 0);

    // candycane2 = loadImage("candycane2.jpg");

    //SET TREE AS IMAGE
    //   tree = loadImage("xmas tree1.png");

    // SET CANDY CANE AS IMAGE
    cane = loadImage("candy cane 3.png");
  }


  //DISPLAY DIVISION
  void display() {
    image(cane, loc.x, loc.y, rectW, height);
  }

  //DON'T LET MOUSE PASS DIVISION
  void block() {
    if (mouseX >= width/2-rectW/2) {
      mouseX = width/2 - rectW;
    }
  }
}

