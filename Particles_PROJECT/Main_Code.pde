PresentSystem ps;
PImage workshop;                                                          //declare image
PImage elffairy;
Opening hole;

void setup() {
  size(800, 384);                                                         //size of screen set to size of background picture
  noCursor();
  ps = new PresentSystem();
  hole = new Opening(100);
  workshop = loadImage("workshop.jpg");                                   //assign image
  elffairy = loadImage("elffairy.png");
}

void draw() {
  background(workshop);                                           //workshop picture set as the background
  image(elffairy, mouseX - 90, mouseY - 30, 100, 102);    
  ps.addPresent();
  ps.run();
  hole.display();
  hole.tranports(ps);
}

