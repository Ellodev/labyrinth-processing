boolean collision = false;

void collisionDetection() {
  int mouseRight = mouseX + ( Diameter / 2 );
  int mouseLeft = mouseX - ( Diameter / 2 );
  int mouseTop = mouseY - ( Diameter / 2 );
  int mouseBottom = mouseY + ( Diameter / 2 );
  
  int colorRight = get(mouseRight, mouseY);
  int colorLeft = get(mouseLeft, mouseY);
  int colorTop = get(mouseTop, mouseX);
  int colorBottom = get(mouseBottom, mouseX);
  
  if (colorRight == -262144 || colorLeft == -262144  || colorTop == -262144  || colorBottom == -262144) {
    collision = true;
  } else {
  collision = false;
  }
}
