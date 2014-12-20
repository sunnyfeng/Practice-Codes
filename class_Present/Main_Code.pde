PresentSystem ps;
PImage workshop;                                                          //declare image
PImage elffairy;
PImage candycane2;
Opening hole;
Sleigh sl;
int count;
int need;
int rectW;

void setup() {
  size(800, 384);                                                         //size of screen set to size of background picture
  noCursor();
  textAlign(CENTER);
  ps= new PresentSystem();
  hole = new Opening(100);
  sl = new Sleigh();
  count = 0;
  need = 200;         //number of presents needed
  rectW = 15;
  workshop = loadImage("workshop.jpg");                                   //assign image
  elffairy = loadImage("elffairy.png");
  candycane2 = loadImage("candycane2.jpg");
}

void draw() {
  background(workshop); 
fill(255,50);
//workshop picture set as the background
  rect(0,0,width,height);
  image(elffairy, mouseX - 80, mouseY - 50, 100, 102);    
  ps.addPresent();
  ps.run();
  hole.display();
  sl.display();
  
  image(candycane2, width/2-rectW/2,0,rectW,height);
  if (mouseX >= width/2-rectW){
    mouseX = width/2 - rectW;                  //FIX
}
}

