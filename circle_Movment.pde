int Diameter = 80;
int circleX = 50;
int circleY = 150;
int circleRadius = Diameter / 2;
int offsetX, offsetY;
boolean dragging = false;
int newCircleX = mouseX - offsetX;
int newCircleY = mouseY - offsetY;

void circleMovement() {
  map1();  // Your custom function, assuming it draws the background or map
  textSize(30);
  text("Points: " + score, 925,50);
  checkCollision(circleX, circleY);
  circleRadius = Diameter / 2;
  if(mousePressed && dragging) {
    playerAnimation();
    image(Player, circleX - circleRadius, circleY - circleRadius, Diameter, Diameter);
  } else {
    image(loadImage("Player.png"), circleX - circleRadius, circleY - circleRadius, Diameter, Diameter);
  }
  //circle(circleX, circleY, Diameter);
  
  if (dragging) {
    int newCircleX = mouseX - offsetX;
    int newCircleY = mouseY - offsetY;
    checkCollision(newCircleX, newCircleY);
    
    // Check if the new position is within the boundaries
    if (!collision) {
      
      int differenceX = Math.abs(circleX - newCircleX);
      int differenceY = Math.abs(circleY - newCircleY);
      
      if (differenceX < 50 && differenceY < 50) {
        circleX = newCircleX;
        circleY = newCircleY;
      }
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
