  
  int topH = 100;
  int lineW = 10;
  int boardL = 600;
  
  int symbol = 1;


void setup(){
  size(600,700);
  background(0,140,200);
  
}

void draw(){
 
 fill(0);  
 
// # - vertical lines
  rect(boardL/3,topH, lineW, boardL);
  rect(2*boardL/3,topH, lineW, boardL);
  
// # - horizontal lines
  rect(0,topH+boardL/3, boardL, lineW);
  rect(0,topH+2*boardL/3, boardL, lineW);
  
  
//Box 1
  if(symbol == -1 && mouseX >0 && mouseX < boardL/3 &&
         mouseY>0 && mouseY < topH+boardL/3){
    textSize(200);
    text("X", 50, topH+175);
  }
  
  if (symbol == 1 && mouseX >0 && mouseX < boardL/3 &&
         mouseY>0 && mouseY < topH+boardL/3){
    textSize(200);
    text("O", 35, topH + 175);
  }
  
}


void mousePressed(){

  symbol*=-1;
                  
  
}
