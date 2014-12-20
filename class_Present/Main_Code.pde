PresentSystem ps;
PImage workshop;                                                          //declare image
PImage elffairy;
Opening hole;
Sleigh sl;
int count;
int need;
Division div;

void setup() {
  size(800, 384);                                                         //size of screen set to size of background picture
  noCursor();
  textAlign(CENTER);
  ps= new PresentSystem();
  hole = new Opening(100);
  sl = new Sleigh();
  div = new Division();
  count = 0;
  need = 200;         //number of presents needed
  workshop = loadImage("workshop.jpg");                                   //assign image
  elffairy = loadImage("elffairy.png");
}

void draw() {
  background(workshop);                               //workshop picture set as the background
  fill(255,50);
  rect(0,0,width,height);  
  
  div.display();
  div.block();  
  ps.addPresent();
  ps.run();
  hole.display();
  sl.display();
  
  image(elffairy, mouseX - 80, mouseY - 50, 100, 102);
}


