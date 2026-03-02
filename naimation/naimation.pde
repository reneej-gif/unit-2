int monsterX;
int angl;



void setup() {
  size(800, 800,P2D);
  monsterX=0;

}

void draw() {
  background(200);
  monster(monsterX, 400, angl);
  monsterX=monsterX+5;
  angl=angl+1;
  if(monsterX>1000){
    monsterX=-200;
  }
}


void monster(int x, int y,int angle) {
  pushMatrix(); // begin transformations
  translate(x,y);
  rotate(radians(angl));
  fill(211, 81, 135);
  noStroke();
  ellipse(-70, -125, 60, 250);
  ellipse(70, -125, 60, 250);
  stroke(178, 34, 113);
  ellipse(0, -100, 195, 50);
  noStroke();
  rect(-100, -100, 200, 300);

  //lgets
  ellipse(-70, 200, 60, 120);
  ellipse(70, 200, 60, 110);
  //arm
  ellipse(-120, 50, 100, 60);
  triangle(-100, 0, -168, 40, 0, 50);
  ellipse(120, 50, 100, 60);
  triangle(100, 0, 168, 40, 0, 50);

  //esys
  fill(209, 61, 133);
  stroke(175, 35, 103);
  strokeWeight(5);
  ellipse(-60, -50, 60, 60);
  ellipse(60, -50, 60, 60);
  fill(0);
  ellipse(-60, -50, 30, 11);
  ellipse(60, -50, 30, 11);

  noStroke();
  triangle(-15, -50, 15, -50, 0, -30);
  ellipse(0, -49, 28, 10);

  //mout
  fill(82);
  ellipse(0, 20, 135, 50);
  strokeWeight(3);
  stroke(12);
  line(-66, 20, 66, 20);
  //teeth
  noStroke();
  fill(234);
  rect(-20, 10, 13, 15);
  rect(0, 10, 13, 15);
  popMatrix(); //end transformations
}
