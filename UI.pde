void displayStart() {
    textAlign(CENTER);
    fill(0, 0, 255);
    textSize(50);
    text("Move to the blue to start.", 550, 400);
}

void displayEnd() {
  background(0, 255, 0);
  textAlign(CENTER);
  textSize(50);
  fill(0);
  text("DONE!", 550, 350);
  text("SCORE: " + String.valueOf(score), 550, 450); 
}
