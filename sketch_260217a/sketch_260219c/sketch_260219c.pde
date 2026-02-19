int a,b;

void setup(){
  size(600,600);
  b=300;
  a=300;
  strokeWeight(5);
}

void draw(){
  background(255);
  ellipse(150,b,200,200);
  ellipse(450,a,200,200);
  b=b+1;
  a=a-1;
  if(b>700){
    b=-100;
    a=700;
  }
}
