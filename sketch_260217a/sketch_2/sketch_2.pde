int a,b;

void setup(){
  size (600,600);
  b=0;
  a=0;
  strokeWeight(5);
}

void draw(){
  background(255);
  ellipse(b,300,a,a);
  b=b+5;
  a=a+1;
  if(b>600){
    b=0;
    a=0;
  }
}
  
