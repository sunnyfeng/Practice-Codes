ArrayList <Particle> particles = new ArrayList <Particle>();

void setup() {
  size(800, 600);
  background(0);
}

void draw() {
  background(0);
  for (int i=0; i<3; i++) {
    particles.add(new Particle());            //adding new particle
  }

  for (int i = particles.size ()-1; i >=0; i--) {      //get from ArrayList; make a lot
    Particle p = particles.get(i);
    p.display();
    //p.aging();
    p.bounce();
    p.move();
    p.die();
    //    p.paint();
    if (p.isDead()) {
      particles.remove(i);
    }
  }
}

