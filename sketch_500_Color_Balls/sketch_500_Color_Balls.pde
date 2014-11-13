int i = 0;
int count = 20;

int [] x = new int [count];

int [] y = new int [count];

int [] sz= new int [count];

int [] xspeed = new int [count];

int [] yspeed = new int [count];

void setup () {
  size(1000, 800);
  for (int i = 0; i < count; i ++){
    x [i] = int (random(100, width - 100));
    y[i] = int (random(100, height - 100));
    sz [i] = int (random(20,100));
    xspeed [i] = int (random( -3,3));
    if (xspeed[i] == 0){
      xspeed[i]= 1;
    }
    yspeed [i] = int (random( -3,3));
     if (yspeed[i] == 0){
      yspeed[i]= 2;
    }
}
}

void draw() {

  background(0);

  for ( int i = 0; i <x.length; i ++) {
    noStroke();
  
    ellipse( x [i], y[i], sz[i], sz[i] );


    x [i] += xspeed [i];
    y [i] += yspeed [i];

    if (x[i] + sz[i]/2 > width || x[i] - sz[i]/2 <0) {
      xspeed [i] *= -1;
    }

    if ( y[i] + sz[i]/2 > height || y[i] - sz[i]/2 < 0) {
      yspeed[i] *= -1;
    }
  }
}

