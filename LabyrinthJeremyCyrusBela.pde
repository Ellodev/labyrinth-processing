// Global variables
PImage img;
boolean gameStart = false;
boolean leaderboardUpdated = false;
boolean titleScreenOver = false;

void setup() { 
  // Initialize the game window and settings
  frameRate(60);
  size(1100, 800);
  
  // Initialize game data
  resetScore();
  setupLeaderboard();
  
  // Load assets
  img = loadImage("labyrinth.jpg");
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
