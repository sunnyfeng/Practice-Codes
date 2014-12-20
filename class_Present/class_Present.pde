
class Present{
//declare
  PVector loc,vel,acc;
  float sz;
  float life;
  float decay;
  PImage gift;
  
  Present(){
  //initialize
    loc = new PVector(mouseX,mouseY);
    vel = new PVector(random(-1,2),random(-1,2));
    acc = new PVector(0,.1);
    sz = random(20,30);
    life = 255;
    decay = 200;
    gift = loadImage("gift.png");                       //assign the present image as gift
  }
  
  void move(){                                          //move the present
    vel.add(acc);
    loc.add(vel);
  }
  
  void display(){                                       //display the present
   // stroke(0,170,255);
    fill(0,150,255,life);                               //fill 
    image(gift,loc.x,loc.y,sz,sz);
  }
  
 // void aging(){                                       //life decrease every frame
 //   life-=decay;
//}
 
  
  void leave(){                                           //die when present out of screen
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    life-=decay;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    life-=decay;
  }
  }
  
  boolean isDead(){                                     //return true if present is dead, false if not
    if (life <0){
      return true;
    } else{
      return false;
    }
  }
  
  void fallIn(Opening op){
    if (loc.dist(op.loc1) < op.depth/2 + sz/2){
      loc.set(random(op.loc2.x-op.longness/2+sz/2,op.loc2.x+op.longness/2-sz/2),op.loc2.y);
      vel.set(random(-.05,.05),vel.y);
    }

  }
  
 int deliveredBy(Sleigh s){
    if(loc.y + sz/2 > s.loc.y){
      if (loc.x +sz/2 > s.loc.x){
      count++;
      life-=decay;
      if (count >= need){
        count = need;
      }
      }
    }
      return count;
  }

}
  
  
  
  
  
  
  
  
  

