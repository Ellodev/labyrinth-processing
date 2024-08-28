boolean collision;
boolean createCollisionPoints;

int x;
int xFinal;

int y;
int yFinal;

void checkCollision(int circleX, int circleY) {
  int radius = Diameter / 2;
  x = circleX;
  y = circleY;
  while (dist(circleX, circleY, x, y) < radius) {
    x++;
    y++;
    createCollisionPoints = false;
  }
  if (dist(circleX, circleY, x, y) > radius) {
    xFinal = x - circleX;
    yFinal = y - circleY;
    x = circleX;
    y = circleY;
    createCollisionPoints = true;
  }
  if (createCollisionPoints) {
    if (get(circleX + xFinal + 1, circleY + yFinal + 1) == color(0) || 
        get(circleX + xFinal + 1, circleY - yFinal - 1) == color(0) || 
        get(circleX - xFinal - 1, circleY - yFinal - 1) == color(0) || 
        get(circleX - xFinal - 1, circleY + yFinal + 1) == color(0) || 
        get(circleX + radius + 1, circleY) == color(0) || 
        get(circleX - radius - 1, circleY) == color(0) || 
        get(circleX, circleY + radius + 1) == color(0) || 
        get(circleX, circleY - radius - 1) == color(0)) {
      collision = true;
    } else {
      collision = false;
    }

    fill(0, 255, 0, 0);
    noStroke();
    circle(circleX + xFinal, circleY + yFinal, 10);
    circle(circleX + xFinal, circleY - yFinal, 10);
    circle(circleX - xFinal, circleY - yFinal, 10);
    circle(circleX - xFinal, circleY + yFinal, 10);
    circle(circleX + radius + 1, circleY, 10);
    circle(circleX - radius - 1, circleY, 10);
    circle(circleX, circleY + radius + 1, 10);
    circle(circleX, circleY - radius - 1, 10);
  }
}

void checkCollisions() {
  // Check collision for the original circle
  

  // Check collision for the new circle
  
}
