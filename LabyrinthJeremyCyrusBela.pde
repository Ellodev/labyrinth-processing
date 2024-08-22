boolean gameStart = false;
boolean leaderboardUpdated = false;

void setup()  { // draws window, sets color 
  size(1100,800);  
  resetScore();
  setupLeaderboard();
}

void draw() {
  if (gameEnd == false) {
    circleMovement();
  } 
  else if (gameEnd == true && !leaderboardUpdated) { 
      displayEnd();
      updateLeaderboard();
      displayLeaderboard();
      leaderboardUpdated = true;
    
  }
  
  if (mouseX < 60 && mouseX > 40 && mouseY < 160 && mouseY > 140) {
    gameStart = true;
  }
  
  if(!gameStart) {
    displayStart();
  }
  if (gameStart) {
    collisionDetection();
  }
  detectEnd();  
}
