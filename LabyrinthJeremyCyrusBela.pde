boolean isInStart = false;
int score;
String scoreString;

void setup()  { // draws window, sets color 
  size(1100,800);

  background(255,255,255);
  
  score = 0;
}

void draw() {
  scoreString = "SCORE: " + String.valueOf(score);

  if (gameEnd == false) {
    circleMovement();
  } else if (gameEnd == true) {
    background(0, 255, 0);
    textAlign(CENTER);
    textSize(50);
    fill(0);
    text("DONE!", 550, 350);
    text(scoreString, 550, 450); 
  }
    if (mouseX < 60 && mouseX > 40 && mouseY < 160 && mouseY > 140) {
    isInStart = true;
    println("is in start");
  }
  if(!isInStart) {
    textAlign(CENTER);
    fill(0, 0, 255);
    textSize(50);
    text("Move to the blue to start.", 550, 400);
  }
  detectEnd();
}
