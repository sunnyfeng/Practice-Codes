int x= 48;
int y= 60;

void setup(){
  size(500,500);
}

void draw(){
background(255);

x=mouseX;
y=mouseY;

//Robot head and neck
fill(150);
rect(x+12,y-48,60,36);
rect(x+36,y-12,12,12);
fill(255);
point(x+42,y-30);
ellipse(x+24,y-36,12,12);
ellipse(x+60,y-36,12,12);
line(x+30,y-18,x+54,y-18);
line(x+54,y-18,x+54,y-20);
line(x+30,y-18,x+30,y-20);


//Robot body
fill(random(255),0,0);
rect(x,y,84,72);
fill(0,random(255),0);
rect(x+12,y+12,60,48);
fill(0,0,random(255));
rect(x+24,y+24,36,24);


//Robot arms
fill(150);
line(x-36,y+6,x,y+6);
line(x+84,y+6,x+120,y+6);
fill(255);
ellipse(x-36,y+6,12,12);
ellipse(x+120,y+6,12,12);


//Robot legs
fill(150);
line(x+30,y+108,x+30,y+72);
line(x+56,y+72,x+56,y+108);
fill(255);
ellipse(x+30,168,12,12);
ellipse(102,168,12,12);
}


