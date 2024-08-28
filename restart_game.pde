void gameRestart() {
  resetScore();
//  setupLeaderboard();
  handleGamePlay();
  gameStart = false;
  gameEnd = false;
  isDead= false;
  Diameter = 80;
  score = 100;
circleX= 50;
circleY= 150;
  // Check if textField and cp5 are initialized before removing
  if (textField != null) {
    textField.remove(); // Remove the text field
  }
  
  if (cp5 != null && cp5.getController("submit") != null) {
    cp5.getController("submit").remove(); // Remove the button
  }
  
  achievedLeaderboard = false;

  updatedLeaderboardFile = false;
  
  leaderboardUpdated = false;
  
  playerName = null;
}
