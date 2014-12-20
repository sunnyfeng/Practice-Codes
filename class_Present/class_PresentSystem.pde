class PresentSystem {
  ArrayList <Present> presents;               //make an Arraylist for the presents
  int tSize;
  String help, more, yay;

  PresentSystem() {
    presents = new ArrayList <Present>();
    tSize = 20;
    help = "HELP! It's Christmas Eve and";
    more = "Santa needs more presents!";
    yay = "You saved Christmas!";
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
      p.bounceOff(div);
      if (p.isDead()) {                                                   //if the boolean function returned life < 0 as true...
        presents.remove(i);                                               //...remove the present
      }

      //text
      fill(255);
      textSize(50);
      stroke(10);
      textSize(tSize);
      text(help, width/5, height/8);
      text(more, width/5, height/8+tSize);
      text("He needs " + morePresents + " more presents!", width/5, height/8+2*tSize);
      
      //end
      if (morePresents == 0) {
        textSize(50);
        stroke(40);
        fill(250,0, 40);
        text(yay, width/2, height/2);
      }
    }
  }
}

