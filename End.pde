boolean gameEnd = false;

void detectEnd() {
  if (controlledMouseX > 1050 && controlledMouseY > 500 && controlledMouseY < 600 && gameStart) {
    gameEnd = true;
  }
}
