
//CLASS PRESENT
class Present {
  //DECLARE
  PVector loc, vel, acc;
  float sz;
  float life;
  float decay;
  PImage gift;

  Present() {
    //INITIALIZE VARIABLES
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(-1, 2), random(-1, 2));
    acc = new PVector(0, .1);
    sz = random(20, 30);

    //AGE OF PRESENTS AND ITS DECAY
    life = 255;
    decay = 200;

    //ASSIGN GIFT IMAGE TO PRESENTS
    gift = loadImage("gift.png");
  }


  //MOVE PRESENTS
  void move() { 
    vel.add(acc);
    loc.add(vel);
  }


  //DISPLAY PRESENTS
  void display() {    

    //TRANSPARENCY BASED ON VALUE OF LIFE
    fill(0, 150, 255, life); 

    image(gift, loc.x, loc.y, sz, sz);
  }


  //LIFE DECREASED EVERY FRAME (INACTIVE)
  void aging() {   
    life-=decay;
  }


  //PRESENT DIES WHEN LEAVES SCREEN
  void leave() { 
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      life-=decay;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      life-=decay;
    }
  }

  //IS THE PRESENT DEAD?
  boolean isDead() { 
    
    //RETURN TRUE IF PRESENT DEAD, FALSE IF NOT
    if (life <0) {
      return true;
    } else {
      return false;
    }
  }


  //INTERACT WITH OPENING
  void fallIn(Opening op) {
    
    //IF IN CONTACT WITH OPENING, SET LOC TO SECOND OPENING'S LOCATION AND FALL DOWNWARDS
    if (loc.dist(op.loc1) < op.depth/2 + sz/2) {
      loc.set(random(op.loc2.x-op.longness/2+sz/2, op.loc2.x+op.longness/2-sz/2), op.loc2.y);
      vel.set(random(-.05, .05), vel.y);
    }
  }

  //INTERACT WITH SLEIGH
  int deliveredBy(Sleigh s) {
    
    //IF IN CONTACT (WITH SLEIGH ONLY, NOT REINDEER), INCREASE COUNT AND DIE
    if (loc.y + sz/2 > s.loc.y) {
      if (loc.x +sz/2 > s.loc.x && loc.x - sz/2 <width-s.sz.x/2) {
        count++;
        life-=decay;

        //COUNT CANNOT BE GREATER THAN NEED
        if (count >= need) {
          count = need;
        }
      }
    }

    //RETURN THE VALUE OF COUNT FOR LATER USE
    return count;
  }

    //INTERACT WITH DIVISION
  void bounceOff(Division d) {

    //PRESENTS BOUNCE OFF DIVISION
    if (loc.x + sz/2 > d.loc.x) {
      vel.x = -abs(vel.x);
    }
  }
}








