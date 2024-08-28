PImage img;
boolean gameStart = false;
boolean leaderboardUpdated = false;
boolean titleScreenOver = false;

void setup()  { // draws window, sets color 
  frameRate(60);
  size(1100,800);  
  resetScore();
  setupLeaderboard();
  
  img = loadImage("labyrinth.jpg");
}

void draw() {
  titleScreen();
  
  if (!gameEnd && titleScreenOver) {
    circleMovement();
    isDeadCheck();
  } 
  else if (gameEnd && !leaderboardUpdated && titleScreenOver) { 
      updateLeaderboard();
      displayEnd();
      displayLeaderboard();
      leaderboardUpdated = true;
  }
  
  if (playerName != null && !updatedLeaderboardFile && titleScreenOver) {
    for (int i = 0; i < 1; i++) {
      updateLeaderboardFile();
      displayLeaderboard();
    }
  }  
  

  if (mouseX < 60 && mouseX > 40 && mouseY < 160 && mouseY > 140 && titleScreenOver) {
    gameStart = true;
  }
  
  if(!gameStart && titleScreenOver) {
    displayStart();
  }
  
  if (gameStart && titleScreenOver) {
    checkCollision();
  }
  
  if (gameStart && !gameEnd && titleScreenOver) {
    scoreManager();
  }
  detectEnd();  
  //println(collision);
}
