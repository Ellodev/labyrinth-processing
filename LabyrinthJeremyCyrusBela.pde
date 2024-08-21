boolean isInStart = false;

void setup()  { // draws window, sets color 
  size(1100,800);

  background(255,255,255);
}

void draw() {
  if (mouseX < 75 && mouseX > 25 && mouseY < 175 && mouseY > 125) {
    isInStart = true;
    println("is in start");
  }
  if (gameEnd == false) {
    circleMovement();
  } else if (gameEnd == true) {
    background(0);
    textSize(50);
    fill(255);
    text("Done!", 500, 400);
  }
  detectEnd();
}
