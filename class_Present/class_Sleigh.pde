class Sleigh{
  //DECLARE
  PVector loc;
  PVector sz;
  PImage sleighPic;
  
  Sleigh(){
    //INITIALIZE
   sz = new PVector(325,157);
   loc = new PVector(width-sz.x,height-sz.y);
   
   //SET SLEIGH AS IMAGE
   sleighPic = loadImage("sleigh.png");
  }
  
  //DISPLAY SLEIGH
  void display(){
    image(sleighPic, loc.x,loc.y,sz.x,sz.y);
  }
  
}
