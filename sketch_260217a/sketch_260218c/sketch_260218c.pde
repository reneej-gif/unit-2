int a;

void setup(){
  size (600,600);
  a=600;
  strokeWeight(5);
}

void draw(){
  background(255);
  ellipse(a,300,200,200);
  a=a-1;
  if(a<-100){
    a=700;
  }
}
