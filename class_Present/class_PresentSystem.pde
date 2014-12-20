class PresentSystem {
  ArrayList <Present> presents;               //make an Arraylist for the presents
  int tSize;

  PresentSystem() {
    presents = new ArrayList <Present>();
    tSize = 20;
  }

  void addPresent() {
    // for (int i=0; i<3; i++) {                               //making more presents per frame
    presents.add(new Present());                                           //adding new particle
    // }
  }

  void run() {
    for (int i = presents.size ()-1; i >=0; i--) {
      Present p = presents.get(i);                                          //get present from ArrayList
      int morePresents = need- p.deliveredBy(sl);                                     
      p.display();                                                         //use methods (right word?)
      p.move();
      p.leave();
      p.fallIn(hole);
      p.deliveredBy(sl);
      
      //text
      fill(100,0,150);
      textSize(50);
      stroke(10);
      textSize(tSize);
      text("HELP!",width/5,height/8);
      text("Santa needs more presents!",width/5,height/8+tSize);
      text("He needs " + morePresents + " more presents!", width/5,height/8+2*tSize);
      if (morePresents == 0){
        textSize(50);
        fill(0,140,40);
        text("You saved Christmas!",width/2,height/2);
      }
      
      if (p.isDead()) {                                                   //if the boolean function returned life < 0 as true...
        presents.remove(i);                                               //...remove the present
      }
    }
  }
}

