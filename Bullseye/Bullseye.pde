float diam=800;
int count=0;


//void setup(){
 // noStroke();
 ///size(800,800);
 // background(0);
//}

//void draw(){
 // ellipse(width/2,height/2,diam,diam);
  //  diam-=20;
//  while (diam>25){
 //   if (count % 2 == 0){
 //     fill(255,0,0);
 //   } else {
  //    fill(255,255,0);
 //   }
   
//  }
//}


void setup(){
  size(800,800);
  noStroke();
  background(0);
  fill(230,50);

}

void draw (){
  while (diam>25){
    //fill(random(255),random(255),random(255));
    ellipse(width/2,height/2,diam,800-diam);
   
    diam=diam*.5;
  }
}


