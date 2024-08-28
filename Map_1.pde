
PImage pathTexture;
PImage startTexture;

boolean map1() {
  noStroke();
  
  pathTexture = loadImage("Path.png");
  startTexture = loadImage("Start.png");
  
  lavaAnimation();
  image(Lava, 0, 0); //Backgrund
  
  fill(0, 0, 0);
  rect(0,100,100,100);
  startPath(0, 1);
  
  
  if (gameStart)  {
    rect(1000, 500, 100, 100);
    path(1, 1);
    path(1, 2);
    path(1, 3);
    path(1, 4);
    path(1, 5);
    path(2, 5);
    path(3, 5);
    path(4, 5);
    path(4, 4);
    path(4, 3);
    path(4, 2);
    path(4, 1);
    path(5, 1);
    path(6, 1);
    path(6, 2);
    path(7, 2);
    path(7, 3);
    path(7, 4);
    path(7, 5);
    path(8, 5);
    path(9, 5);
    endPath(10, 5);
  }
  
  return true;
}

void path(int pathX, int pathY) {
  image(pathTexture, pathX * 100, pathY * 100);
}

void startPath(int startX, int startY) {
  image(startTexture, startX * 100, startY * 100);
}

void endPath(int endX, int endY) {
  endAnimation();
  image(endTexture, endX * 100 - 100, endY * 100 - 100);
}
  
