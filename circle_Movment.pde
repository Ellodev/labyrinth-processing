int Diameter = 70;

int prevMouseX;
int prevMouseY;

void circleMovement(){
  map2();
  fill(255, 0, 0);
  stroke(255, 0, 0);
  circle(mouseX, mouseY, Diameter);
}
