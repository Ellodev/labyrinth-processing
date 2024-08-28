int Diameter = 80;
int circleX = 50;
int circleY = 150;
int circleRadius = Diameter / 2;
int offsetX, offsetY;
boolean dragging = false;

void circleMovement() {
  map1();  // Your custom function, assuming it draws the background or map
  text("Points: " + score, 900,100);
  circleRadius = Diameter / 2;
  fill(123, 123, 123.
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  );
  stroke(424, 354, 5464);
  circle(circleX, circleY, Diameter);
  
  if (dragging) {
    int newCircleX = mouseX - offsetX;
    int newCircleY = mouseY - offsetY;
    
    // Check if the new position is within the boundaries
    if (newCircleX - circleRadius >= 0 && newCircleX + circleRadius <= width) {
      circleX = newCircleX;
    }
    
    if (newCircleY - circleRadius >= 0 && newCircleY + circleRadius <= height) {
      circleY = newCircleY;
    }
  }
}

void MousePressed() {
  // Check if the mouse is clicked within the circle area
  if (dist(mouseX, mouseY, circleX, circleY) <= circleRadius) {
    dragging = true;
    offsetX = mouseX - circleX;
    offsetY = mouseY - circleY;
  }
}

void mouseReleased() {
  dragging = false;
}
