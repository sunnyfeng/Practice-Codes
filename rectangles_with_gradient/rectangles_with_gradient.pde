int barWidth = 40;
int x=0;
void setup(){
  size(800,800);
}

void draw(){

 for(int x=0; x<=width; x+=barWidth){
  fill(x/3,x/2,x);
 rect(x,0,barWidth,height);
} 


}
