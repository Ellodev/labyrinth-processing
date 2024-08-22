boolean gameStart = false;
//lol
void setup()  { // draws window, sets color 
  frameRate(60);
  size(1100,800);  
  resetScore();
}

void draw() {
  if (gameEnd == false) {
    circleMovement();
  } 
  else if (gameEnd == true) {
    displayEnd();
  }
  
  if (mouseX < 60 && mouseX > 40 && mouseY < 160 && mouseY > 140) {
    gameStart = true;
  }
  
  if(!gameStart) {
    displayStart();
  }
  if (gameStart) {
    drawPointsOnCircle(mouseX,mouseY, Diameter / 2 + 5, 8);
  }
  
  if (gameStart && !gameEnd) {
    scoreManager();
  }
  detectEnd();
}
