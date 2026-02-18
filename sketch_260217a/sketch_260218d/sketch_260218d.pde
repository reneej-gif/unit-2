int a;

void setup(){
  size (600,600);
  a=0;
  strokeWeight(5);
}

void draw(){
  background(255);
  ellipse(300,300,a,a);
  a=a+2;
  if(a>850){
    a=0;
  }
}
