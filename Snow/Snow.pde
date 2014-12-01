int count = 100;
PVector [] loc = new PVector [count];
PVector [] vel = new PVector [count];
PVector [] acc = new PVector [count];
float [] sz = new float [count];
float[] theta = new float[count];
float randomvel = random(1, 3);
PImage money;
//float sz = 20;

void setup() {
  money =  loadImage("money.jpg");
  size(1500, 1000);     //<---- Full screen
  //size(1500,600);
  background(0, 0, 30);
  for (int i = 0; i < count; i++) {
    loc [i] = new PVector (random(width), random(height));

    vel [i] = new PVector(0, randomvel);

    acc [i] = new PVector (random(-.01, .01), .05);
    //acc [i] = new PVector (sin(i),0);

    sz [i] = random(20, 30);
    theta[i] = random(TWO_PI);
  }
}

void draw() {
  background(0);
  noStroke();
  // fill(0,0,20,100);
  //  rect(0,0,width, height);

  //  fill(0,0,30,15);
  //  rect(width/2,0,width/2,height);



  //move
  for (int i = 0; i < count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    vel[i].limit(10);


    // fill(100,200,255);  - RAIN COLOR
    fill(255);
    pushMatrix();
    translate(loc[i].x, loc[i].y);
    rotate(theta[i]);
    theta[i]+=.01;
    image(money, 0, 0, 100, 50);
    popMatrix();
    //image(money,loc[i].x, loc[i].y,sz[i],sz[i]);

    //loop sides of screen
    if (loc[i].x + sz[i]/2 > width) {
      loc[i].x = -sz[i]/2;
    }

    if ( loc[i].x - sz[i]/2 < 0) {
      loc[i].x = width+sz[i]/2;
    }

    //loop from bottom
    if (loc[i].y + sz[i]/2 > height) {
      loc[i].y= -sz[i]/2;
      vel[i].set(0, randomvel);
    }
  }
}

