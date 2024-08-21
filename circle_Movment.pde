int Diameter = 80;

int prevMouseX;
int prevMouseY;

void circleMovement(){
  map1();
  fill(255, 0, 0);
  stroke(255, 0, 0);
  circle(mouseX, mouseY, Diameter);
}
