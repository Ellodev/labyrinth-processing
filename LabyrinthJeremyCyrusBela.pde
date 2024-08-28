import processing.sound.*;
SoundFile file;

PImage img;
boolean gameStart = false;
boolean leaderboardUpdated = false;
boolean titleScreenOver = false;

void setup() { 
  // Initialize the game window and settings
  frameRate(60);
  size(1100, 800);
  file = new SoundFile(this,"Royalty Free Game Music Pack  Casual Action - Run and Jump.mp3");
  file.play();
  // Initialize game data
  resetScore();
  setupLeaderboard();
  
  // Load assets
  img = loadImage("Title.png");
}

void draw() {
  // Handle title screen display and interactions
  titleScreen();

  if (titleScreenOver) {
    if (!gameEnd) {
      handleGamePlay();
    } else if (!leaderboardUpdated) {
      handleGameEnd();
    }
    
    // Update leaderboard file if needed
    if (playerName != null && !updatedLeaderboardFile) {
      updateLeaderboardFileIfNeeded();
    }
    
    // Start the game if the mouse is in the start area
    if (mouseX < 60 && mouseX > 40 && mouseY < 160 && mouseY > 140) {
      gameStart = true;
    }
    
    // Display the start screen if the game hasn't started yet
    if (!gameStart) {
      displayStart();
    }
    
    // Continue game if started
    if (gameStart) {
      if (!gameEnd) {
        scoreManager();
      }
      detectEnd();
    }
  }
  if (keyPressed && (key == 'R')) {
  gameRestart();
  }
  if (collision) {
    image(loadImage("PlayerDmg.png"), circleX - circleRadius, circleY - circleRadius, Diameter, Diameter);
  }
}

// Function to handle game play
void handleGamePlay() {
  circleMovement();
  isDeadCheck();
}

// Function to handle game end
void handleGameEnd() {
  updateLeaderboard();
  displayEnd();
  displayLeaderboard();
  leaderboardUpdated = true;
}

// Function to update the leaderboard file if needed
void updateLeaderboardFileIfNeeded() {
  for (int i = 0; i < 1; i++) {
    updateLeaderboardFile();
    displayLeaderboard();
  }
}
