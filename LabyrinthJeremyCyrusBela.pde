boolean gameStart = false;
boolean leaderboardUpdated = false;

void setup()  { // draws window, sets color 
  frameRate(60);
  size(1100,800);  
  resetScore();
  setupLeaderboard();
  resetCollider();
}

void draw() {
  if (gameEnd == false) {
    circleMovement();
    isDeadCheck();
  } 
  else if (gameEnd == true && !leaderboardUpdated) { 
      updateLeaderboard();
      displayEnd();
      displayLeaderboard();
      leaderboardUpdated = true;
  }
  
  if (playerName != null && updatedLeaderboardFile == false) {
    for (int i = 0; i < 1; i++) {
      updateLeaderboardFile();
      displayLeaderboard();
    }
  }  
  

  if (controlledMouseX < 60 && controlledMouseX > 40 && controlledMouseY < 160 && controlledMouseY > 140) {
    gameStart = true;
  }
  
  if(!gameStart) {
    displayStart();
  }
  
  if (gameStart) {
    checkCollision();
  }
  
  if (gameStart && !gameEnd) {
    scoreManager();
  }
  detectEnd();  
  //println(collision);
}
