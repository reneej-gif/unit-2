int x=100;
int direction=1;

float spiderY = 70;
float spiedire = 1;

void setup() {
  size(800, 400);
}

void draw() {
  background(25, 35, 40);
  //ground
  fill(70, 50, 30);
  noStroke();
  rect(0, 300, 800, 100);
  //moon
  fill(200);
  ellipse(100,70,50,50);

  drawTree();
  drawSpider();

  spiderY=spiderY+spiedire;

  if (spiderY>150){
    spiedire=-0.5;
  }
  if(spiderY<70) {
    spiedire= 0.5;
  }

  //cendipete
  x = x+3 *direction;
 
  if(x>950) {
    direction = -1;
  }
  if (x<-150){
    direction = 1;
  }
  
  pushMatrix();
 
  translate(x, 345);
   if (direction==-1) {
    rotate(radians(180));
   }
  drawCentipede();
  popMatrix();
  
}



void drawTree() {
  //trunk
  fill(90, 60, 30);
  noStroke();
  rect(550, 10, 150, 300);
  
  //leaf
  fill(11,84,26);
  ellipse(625, 0, 300, 100);
}


void drawSpider() {
  // web
  stroke(200);
  line(620, 50, 620, spiderY);
  
  fill(0);
  noStroke();

  // body
  ellipse(620, spiderY, 15, 15);

  // legs
  stroke(0);
  line(615, spiderY, 598, spiderY+3);
  line(615, spiderY, 598, spiderY-4);
  line(615,spiderY-2,600,spiderY-10);
  line(615, spiderY+2, 600, spiderY + 10);
  
  line(625, spiderY-2, 640, spiderY - 10);
  line(625, spiderY+2, 640, spiderY + 10);
  line(625, spiderY,642,spiderY+4);
  line(625,spiderY,642,spiderY-3);
  noStroke(); 
}

void drawCentipede() {
  drawSegment(-150);
  drawSegment(-125);
  drawSegment(-100);
  drawSegment(-75);
  drawSegment(-50);
  drawSegment(-25);
  

  //head
  fill(120, 60, 30);
  noStroke();
  ellipse(0, 0, 35, 25);
}

void drawSegment(float wow) {
  pushMatrix();

  translate(wow,0); 

  //body segments
  fill(140, 70, 40);
  noStroke();
  ellipse(0, 0, 30, 20);

  //leegs
  stroke(0);
  line(-5, -8, -7, -18); 
  line(5, -8, 7, -18);
  line(-5, 8, -7, 18);
  line(5, 8, 7, 18);
  noStroke();

  popMatrix();
}
