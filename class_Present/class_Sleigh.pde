class Sleigh{
  PVector loc;
  PVector sz;
  PImage sleighPic;
  
  Sleigh(){
   sz = new PVector(325,157);
   loc = new PVector(width-sz.x,height-sz.y);
   sleighPic = loadImage("sleigh.png");
  }
  
  void display(){
    image(sleighPic, loc.x,loc.y,sz.x,sz.y);
  }
  
}
