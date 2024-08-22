boolean checkCollision(int x, int y) {
  int number = get(x, y);
  println("Checking position: (" + x + ", " + y + ") - Color: " + number);
  
  while (number == -16777216) { // If the color is black (black in Processing is -16777216)
    println("Collision detected at: (" + x + ", " + y + ")");
    return true;
  }
  return false;
}

void drawPointsOnCircle(int x0, int y0, int r, int points) {
  float angleStep = TWO_PI / points;

  for (int i = 0; i < points; i++) {
    float angle = i * angleStep;
    float x = x0 + r * cos(angle);
    float y = y0 + r * sin(angle);
    
    // Round the coordinates to the nearest integer
    int checkX = round(x);
    int checkY = round(y);
    //making circle smaller logic
    checkCollision(checkX, checkY);
    
    
        
    
    //ellipse(x, y, 5, 5); // Draw points on the circle (optional)
    
    
  
    
  }
}
