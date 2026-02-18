int a;

void setup() {
  size(600,600);
  a=0;
  strokeWeight(5);
}

void draw(){
  background(255);
  ellipse(300,a,200,200);
  a=a+1;
  if (a>670){
    a=-100;
  }
}
