String[] leaderboard = new String[0];

String playerName = "anotherplayer";

String[] setupLeaderboard() {
  leaderboard = loadStrings("leaderboard.txt");
  return leaderboard;
}

void displayLeaderboard() {
  textSize(20);
  text("Leaderboard", 550, 490);
  textAlign(CENTER);
  for (int i = 0; i < leaderboard.length; i++) {
    String[] leaderboardParts = split(leaderboard[i], ',');
    text(leaderboardParts[0] + ": " + leaderboardParts[1], 550, 510 + i * 20);
    textAlign(CENTER);
  }
}

void updateLeaderboard() {
  
  // Create a new array with one more slot
  String[] newLeaderboard = new String[leaderboard.length + 1];
  
  // Copy existing entries
  for (int i = 0; i < leaderboard.length; i++) {
    newLeaderboard[i] = leaderboard[i];
  }
  
  // Add the new entry
  newLeaderboard[leaderboard.length] = playerName + "," + score;
  
  
  // Replace the old array with the new one
  leaderboard = newLeaderboard;
  
  // println(playerName, score, leaderboard);
  
  sortLeaderboard();
  
  // Check if we have more than 10 entries
  if (leaderboard.length > 10) {
    // Trim the leaderboard to top 10
    String[] trimmedLeaderboard = new String[10];
    for (int i = 0; i < 10; i++) {
      trimmedLeaderboard[i] = leaderboard[i];
    }
    leaderboard = trimmedLeaderboard;
  }
  
  saveStrings("leaderboard.txt", leaderboard);
}

// Function to sort the leaderboard from highest to lowest score
void sortLeaderboard() {
  java.util.Arrays.sort(leaderboard, new java.util.Comparator<String>() {
    public int compare(String a, String b) {
      int scoreA = int(split(a, ',')[1]);
      int scoreB = int(split(b, ',')[1]);
      return scoreB - scoreA; // Sort in descending order
    }
  });
}

void checkIfLeaderboardPosition() {

}
