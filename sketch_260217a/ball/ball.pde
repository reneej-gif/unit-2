int a, b;

void setup(){
  size(600,600);
  a=0;
  b=0;
  strokeWeight(5);
}

void draw(){
  background(255);
  ellipse(b,a,200,200);
  a=a+1;
  b=b+1;
  if(a>700){
    a=-100;
    b=-100;
  }
}
