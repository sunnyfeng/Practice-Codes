ArrayList <Present> presents = new ArrayList <Present>();
PImage workshop;
PImage elffairy;

void setup() {
  size(800, 384);
  noCursor();
  workshop = loadImage("workshop.jpg");
  elffairy = loadImage("elffairy.png");
}

void draw() {
  background(workshop);
  image(elffairy, mouseX - 90,mouseY - 30,100,102);

  //for (int i=0; i<3; i++) {
    presents.add(new Present());            //adding new particle
  //}

  for (int i = presents.size ()-1; i >=0; i--) {      //get from ArrayList; make a lot
    Present p = presents.get(i);
    p.display();
    p.move();
    p.die();
    if (p.isDead()) {
      presents.remove(i);
    }
  }
}

