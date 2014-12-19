<<<<<<< HEAD
ArrayList <Present> presents = new ArrayList <Present>();
Opening hole;
PImage workshop;
PImage elffairy;
=======
ArrayList <Present> presents = new ArrayList <Present>();                 //make an Arraylist for the presents
PImage workshop;                                                          //declare image
PImage elffairy;                                                          // ^
>>>>>>> origin/master

void setup() {
  size(800, 384);                                                         //size of screen set to size of background picture
  noCursor();
<<<<<<< HEAD
  workshop = loadImage("workshop.jpg");
  elffairy = loadImage("elffairy.png");
  hole  = new Opening(50);
=======
  workshop = loadImage("workshop.jpg");                                   //assign image
  elffairy = loadImage("elffairy.png");                                   // ^
>>>>>>> origin/master
}

void draw() {
  background(workshop);                                                   //workshop picture set as the background
  image(elffairy, mouseX - 90,mouseY - 30,100,102);                       //set elf fairy to follow mouse but presents are created from where her wand is

  //for (int i=0; i<3; i++) {                                             //making more presents per frame
    presents.add(new Present());                                           //adding new particle
  //}

  for (int i = presents.size ()-1; i >=0; i--) {
    Present p = presents.get(i);                                         //get present from ArrayList
    p.display();                                                         //use methods (right word?)
    p.move();
    p.die();
    if (p.isDead()) {                                                   //if the boolean function returned life < 0 as true...
      presents.remove(i);                                               //...remove the present
    }
    hole.display();
    //hole.transport();
  }
}

