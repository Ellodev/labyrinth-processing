boolean gameEnd = false;

void detectEnd() {
  if (mouseX > 1050 && mouseY > 500 && mouseY < 600 && isInStart) {
    gameEnd = true;
  }
}
