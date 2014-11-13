int i = 0;
int count = 50;
int sz=200;
float [] x = new float [count];
float [] y = new float [count];



void setup() {
  size(800, 600);
//  colorMode(HSB,360,100,100,100);
  
  for (int i = 0; i<count; i++) {
    ellipse(x[i], y[i], 30+30*i, 30+30*i);
    x[i]= random(width);
    y[i]= random(height);
  }

}

void draw() {
 // fill(frameCount%360, 100,100,100);
 noStroke();
  fill(255,0,255,15);
  
  background(0);
  for (int i =0; i<count-1; i++) {
    //fill(i*60, 100, 100, 100);
  
    ellipse(x[i], y[i], sz,sz);
    //ellipse(x[i], y[i], 30+30*i,30+30*i);


    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  
    x[count-1]= mouseX;
    y[count-1] = mouseY;
  
}

