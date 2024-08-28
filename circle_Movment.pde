/* int Diameter = 80;

int prevMouseX;
int prevMouseY;

void circleMovement(){
  map1();
  fill(255, 0, 0);
  stroke(255, 0, 0);
  prevMouseX = mouseX;
  prevMouseY = mouseY;
  circle(mouseX, mouseY, Diameter);
  
} */

int Diameter = 80;
int circleX = 50;
int circleY = 150;
int circleRadius = Diameter / 2;
int offsetX, offsetY;
boolean dragging = false;

void circleMovement(){
  map1();
  circleRadius = Diameter / 2;
  fill(255, 0, 0);
  stroke(255, 0, 0);
  circle(circleX, circleY, Diameter);
  
  if (dragging) {
    int newCircleX = mouseX - offsetX;
    int newCircleY = mouseY - offsetY;
    
    // TODO check if Circle is within boundaris
      circleX = newCircleX;
      circleY = newCircleY;
  }
}

void mouseReleased() {
  dragging = false;
}
