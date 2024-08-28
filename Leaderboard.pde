boolean achievedLeaderboard = false;

boolean updatedLeaderboardFile = false;

String[] leaderboard = new String[0];

String playerName;

String[] setupLeaderboard() {
  leaderboard = loadStrings("leaderboard.txt");
  return leaderboard;
}

void displayLeaderboard() {
  background(0);
  displayEnd();
  textSize(20);
  text("Leaderboard", 550, 430);
  textAlign(CENTER);
  for (int i = 0; i < leaderboard.length; i++) {
    String[] leaderboardParts = split(leaderboard[i], ',');
    text(leaderboardParts[0] + ": " + leaderboardParts[1], 550, 455 + i * 20);
    textAlign(CENTER);
  }
   
}

void updateLeaderboard() {
  
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
  
  int lowestLeaderboardScore = int(split(leaderboard[9], ',')[1]);
  
  println(lowestLeaderboardScore);
  
  if (score > lowestLeaderboardScore) {
    achievedLeaderboard = true;
    askName();
  }
}

void updateLeaderboardFile() {
  println("hi there");
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
  
  sortLeaderboard();
  
  saveStrings("leaderboard.txt", leaderboard);
  updatedLeaderboardFile = true;
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
