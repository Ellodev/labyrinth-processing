int Diameter = 50;

int prevMouseX;
int prevMouseY;

void draw() {
  //drawMap funktion hier.
  background(0);
  fill(255, 0, 0);
  stroke(255, 0, 0);
  circle(mouseX, mouseY, Diameter);
}
