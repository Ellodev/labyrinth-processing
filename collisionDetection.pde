boolean collision;
boolean setCollisionPoints;

color lava1 = color(255, 132, 38);
color lava2 = color(255, 209, 0);

int x;
int xFinal;

int y;
int yFinal;

void checkCollision() {
  int radius = Diameter / 2;
  x = circleX;
  y = circleY;
  while(dist(circleX, circleY, x, y) < radius) {
    x++;
    y++;
    setCollisionPoints = false;
  }
  if (dist(circleX, circleY, x, y) > radius) {
    xFinal = x - circleX;
    yFinal = y - circleY;
    x = circleX;
    y = circleY;
    setCollisionPoints = true;
  }
  if (setCollisionPoints) {
    if (get(circleX + xFinal + 1, circleY + yFinal + 1) == lava1 || get(circleX + xFinal + 1, circleY - yFinal - 1) == lava1 || get(circleX - xFinal - 1, circleY - yFinal - 1) == lava1 || 
    get(circleX - xFinal - 1, circleY + yFinal + 1) == lava1 || get(circleX + radius + 1, circleY) == lava1 || get(circleX - radius - 1, circleY) == lava1 || get(circleX, circleY + radius + 1) == lava1 ||
    get(circleX, circleY - radius - 1) == lava1 || get(circleX + xFinal + 1, circleY + yFinal + 1) == lava2 || get(circleX + xFinal + 1, circleY - yFinal - 1) == lava2 || get(circleX - xFinal - 1, circleY - yFinal - 1) == lava2 || 
    get(circleX - xFinal - 1, circleY + yFinal + 1) == lava2 || get(circleX + radius + 1, circleY) == lava2 || get(circleX - radius - 1, circleY) == lava2 || get(circleX, circleY + radius + 1) == lava2 ||
    get(circleX, circleY - radius - 1) == lava2) {
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
