//DECLARE
PresentSystem ps;
PImage workshop;  
PImage elffairy;
Opening hole;
Sleigh sl;
int count;
int need;
Division div;

void setup() {
  size(800, 384);                                                       
  noCursor();
  textAlign(CENTER);
  
  //INITIALIZE CLASSES
  ps= new PresentSystem();
  hole = new Opening(100);
  sl = new Sleigh();
  div = new Division();
  
  //COUNT STARTS AT 0
  count = 0;
  
  //THE NUMBER OF PRESENTS NEEDED TO BE DELIVERED
  need = 200;
  
  //SET IMAGES
  workshop = loadImage("workshop.jpg");                        
  elffairy = loadImage("elffairy.png");
}

void draw() {
  //SET BACKGROUND AS WORKSHOP IMAGE
  background(workshop);   

  //MAKE IMAGE LIGHTER  
  fill(255,50);
  rect(0,0,width,height);  
  
  //CALL METHODS
  div.display();
  div.block();  
  
  ps.addPresent();
  ps.run();
  
  hole.display();
  
  sl.display();
  
  //SET ELF FAIRY IMAGE TO FOLLOW THE MOUSE
  image(elffairy, mouseX - 80, mouseY - 50, 100, 102);
}


