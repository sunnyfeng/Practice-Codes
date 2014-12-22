//CLASS PRESENTSYSTEM
class PresentSystem {
  //DECLARE

  //MAKE AN ARRAYLIST FOR PRESENTS
  ArrayList <Present> presents;  

  int tSize;
  String help, more, yay;

  PresentSystem() {
    //INITIALIZE
    presents = new ArrayList <Present>();
    tSize = 20;

    //INITIALIZE TEXT
    help = "HELP! It's Christmas Eve and";
    more = "Santa needs more presents!";
    yay = "You saved Christmas!";
  }

  //ADD MORE PRESENTS
  void addPresent() {

    // for (int i=0; i<3; i++) {    //MAKING MORE PRESENTS PER FRAME
    
    presents.add(new Present()); 
    
    // }
  }

  //RUN THE PRESENT SYSTEM
  void run() {

    for (int i = presents.size ()-1; i >=0; i--) {

      //GET PRESENT FROM ARRAYLIST
      Present p = presents.get(i);   

      //DECLARE AND INITIALIZE MOREPRESENTS
      int morePresents = need- p.deliveredBy(sl);     

      //CALL METHODS OF PRESENTS
      p.display();       
      p.move();
      p.leave();
      //p.aging();
      p.fallIn(hole);
      p.deliveredBy(sl);
      p.bounceOff(div);

      //IF DEAD, REMOVE PRESENT
      if (p.isDead()) {   
        presents.remove(i);
      }

      //ONSCREEN TEXT
      fill(255);
      textSize(50);
      stroke(10);
      textSize(tSize);
      text(help, width/5, height/8);
      text(more, width/5, height/8+tSize);
      text("He needs " + morePresents + " more presents!", width/5, height/8+2*tSize);

      //AT END OF ACTIVITY, DISPLAY TEXT
      if (morePresents == 0) {
        textSize(50);
        stroke(40);
        fill(250, 0, 40);
        text(yay, width/2, height/2);
      }
    }
  }
}

