int startScore =100; //startScore hier ändern.
int score;


void resetScore() {
  score = startScore;
  delay = true;
}

void scoreManager() {
  if(collision && delay) {
    scoreDelay(1000);
    Diameter = Diameter - 10;
  }
}
