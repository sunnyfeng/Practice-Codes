int i = 0;

int [] x = {
  700, 400, 600, 350, 405
};
int [] y = {
  500, 700, 400, 200, 15
};
float [] sz= {
  30, 300, 50, 60, 70
};
int [] szspeed= { 
  1, -1, 2, 1, -1
};
int [] xspeed = { 
  1, 2, -1, -2, 1
};
int [] yspeed = {
  2, -1, 1, 1, 2
};

void setup () {
  size(1000, 800);

}

void draw() {

  background(0);

  float [] fillet = {50,100,150,200,250 };

  for ( int i = 0; i <x.length; i ++) {
    noStroke();
    fill(fillet[i], 175);
    ellipse( x [i], y[i], sz[i], sz[i] );

    if (sz [i] > 300 || sz [i] < 10) {
       szspeed [i] *= -1;
    }

    x [i] += xspeed [i];
    y [i] += yspeed [i];
    sz [i] += szspeed[i];

    if (x[i] + sz[i]/2 > width || x[i] - sz[i]/2 <0) {
      xspeed [i] *= -1;
    }

    if ( y[i] + sz[i]/2 > height || y[i] - sz[i]/2 < 0) {
      yspeed[i] *= -1;
    }
  }
}

