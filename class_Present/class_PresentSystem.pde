class PresentSystem {
  ArrayList <Present> presents;                                          //make an Arraylist for the presents                                                       // ^

  PresentSystem() {
    presents = new ArrayList <Present>();
  }

  void addPresent() {
    // for (int i=0; i<3; i++) {                               //making more presents per frame
    presents.add(new Present());                                           //adding new particle
    // }
  }

  void run() {
    for (int i = presents.size ()-1; i >=0; i--) {
      Present p = presents.get(i);                                         //get present from ArrayList
      p.display();                                                         //use methods (right word?)
      p.move();
      p.leave();
      if (p.isDead()) {                                                   //if the boolean function returned life < 0 as true...
        presents.remove(i);                                               //...remove the present
      }
    }
  }
}

