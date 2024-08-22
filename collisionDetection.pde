boolean collision;
boolean createCollisionPoints;

int x;
int xFinal;

int y;
int yFinal;

void checkCollision() {
  int radius = Diameter / 2;
  x = mouseX;
  y = mouseY;
  while(dist(mouseX, mouseY, x, y) < radius) {
    x++;
    y++;
    createCollisionPoints = false;
  }
  if (dist(mouseX, mouseY, x, y) > radius) {
    xFinal = x - mouseX;
    yFinal = y - mouseY;
    x = mouseX;
    y = mouseY;
    createCollisionPoints = true;
  }
  if (createCollisionPoints) {
    if (get(mouseX + xFinal + 1, mouseY + yFinal + 1) == color(0) || get(mouseX + xFinal + 1, mouseY - yFinal - 1) == color(0) || get(mouseX - xFinal - 1, mouseY - yFinal - 1) == color(0) || 
    get(mouseX - xFinal - 1, mouseY + yFinal + 1) == color(0) || get(mouseX + radius + 1, mouseY) == color(0) || get(mouseX - radius - 1, mouseY) == color(0) || get(mouseX, mouseY + radius + 1) == color(0) ||
    get(mouseX, mouseY - radius - 1) == color(0)) {
      collision = true;
    } else {
      collision = false;
    }
    
    fill(0, 255, 0, 0);
    noStroke();
    circle(mouseX + xFinal, mouseY + yFinal, 10);
    circle(mouseX + xFinal, mouseY - yFinal, 10);
    circle(mouseX - xFinal, mouseY - yFinal, 10);
    circle(mouseX - xFinal, mouseY + yFinal, 10);
    circle(mouseX + radius + 1, mouseY, 10);
    circle(mouseX - radius - 1, mouseY, 10);
    circle(mouseX, mouseY + radius + 1, 10);
    circle(mouseX, mouseY - radius - 1, 10);
  }
}
