
//built in variables:
// -mouseX, mouseY: coordinates for mouse pointer

//define yoru own variables ehere (int=integer )
int x;


void setup() {
  size(600,600);
  x=300; //set the starting value
} // ----end of setup-----

void draw (){
  background(0);
  ellipse(x,300,200,200);
  x=x+10;
} // end of draw
