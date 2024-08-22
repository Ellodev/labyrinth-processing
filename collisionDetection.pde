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
  x = controlledMouseX;
  y = controlledMouseY;
  while(dist(controlledMouseX, controlledMouseY, x, y) < radius) {
    x++;
    y++;
    setCollisionPoints = false;
  }
  if (dist(controlledMouseX, controlledMouseY, x, y) > radius) {
    xFinal = x - controlledMouseX;
    yFinal = y - controlledMouseY;
    x = controlledMouseX;
    y = controlledMouseY;
    setCollisionPoints = true;
  }
  if (setCollisionPoints) {
    if (get(controlledMouseX + xFinal + 1, controlledMouseY + yFinal + 1) == color(0) || get(controlledMouseX + xFinal + 1, controlledMouseY - yFinal - 1) == color(0) || 
    get(controlledMouseX - xFinal - 1, controlledMouseY - yFinal - 1) == color(0) || get(controlledMouseX - xFinal - 1, controlledMouseY + yFinal + 1) == color(0) || 
    get(controlledMouseX + radius + 1, controlledMouseY) == color(0) || get(controlledMouseX - radius - 1, controlledMouseY) == color(0) || get(controlledMouseX, controlledMouseY + radius + 1) == color(0) ||
    get(controlledMouseX, controlledMouseY - radius - 1) == color(0)) {
      collision = true;
    } else {
      collision = false;
    }
    
    if (get(controlledMouseX + radius + 1, controlledMouseY) == color(0)) {
      px = true;
    } else {
      px = false;
    }
    
    fill(0, 255, 0, 0);
    noStroke();
    circle(controlledMouseX + xFinal, controlledMouseY + yFinal, 10);
    circle(controlledMouseX + xFinal, controlledMouseY - yFinal, 10);
    circle(controlledMouseX - xFinal, controlledMouseY - yFinal, 10);
    circle(controlledMouseX - xFinal, controlledMouseY + yFinal, 10);
    circle(controlledMouseX + radius + 1, controlledMouseY, 10);
    circle(controlledMouseX - radius - 1, controlledMouseY, 10);
    circle(controlledMouseX, controlledMouseY + radius + 1, 10);
    circle(controlledMouseX, controlledMouseY - radius - 1, 10);
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
