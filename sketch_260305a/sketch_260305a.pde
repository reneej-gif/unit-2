
void setup(){
  size(500,500);
}

void draw(){
  background(255);
  dfff(250,250);
}

void dfff(int x, int y){
  pushMatrix();
  translate(x,y);
  fill(0);
  ellipse(0,0,100,90);

  popMatrix();
}
