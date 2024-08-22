int Diameter = 80;

int controlledMouseX;
int controlledMouseY;


boolean saveMouse;
int difMouseXY;
int prevMouseX;
int prevMouseY;

void circleMovement(){
  map1();
  
  controlledMouseX = mouseX;
  controlledMouseY = mouseY;
  prevMouseX = mouseX;
  prevMouseY = mouseY;
  
  fill(255, 0, 0);
  stroke(255, 0, 0);
  circle(controlledMouseX, controlledMouseY, Diameter);
  
}
