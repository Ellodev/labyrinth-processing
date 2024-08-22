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
  } 
  else if (gameEnd == true && !leaderboardUpdated) { 
      displayEnd();
      updateLeaderboard();
      displayLeaderboard();
      leaderboardUpdated = true;
    
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
