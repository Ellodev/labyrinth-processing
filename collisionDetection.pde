boolean collision;
boolean setCollisionPoints;

boolean px;
boolean py;
boolean nx;
boolean ny;
boolean pxpy;
boolean pxny;
boolean nxny;
boolean nxpy;

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
    if (get(circleX + xFinal + 1, circleY + yFinal + 1) == color(0) || get(circleX + xFinal + 1, circleY - yFinal - 1) == color(0) || get(circleX - xFinal - 1, circleY - yFinal - 1) == color(0) || 
    get(circleX - xFinal - 1, circleY + yFinal + 1) == color(0) || get(circleX + radius + 1, circleY) == color(0) || get(circleX - radius - 1, circleY) == color(0) || get(circleX, circleY + radius + 1) == color(0) ||
    get(circleX, circleY - radius - 1) == color(0)) {
      collision = true;
    } else {
      collision = false;
    }
    
    if (get(mouseX + radius + 1, mouseY) == color(0)) {
      px = true;
    } else {
      px = false;
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

void resetCollider() {
  px = false;
  py = false;
  nx = false;
  ny = false;
  pxpy = false;
  pxny = false;
  nxny = false;
  nxpy = false;
}
