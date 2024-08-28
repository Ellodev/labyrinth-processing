boolean gameEnd = false;

void detectEnd() {
  if (circleX > 1050 && circleY > 500 && circleY < 600 && gameStart) {
    gameEnd = true;
  }
}
