void titleScreen() {
  if (!titleScreenOver) {
  image(img, 0, 0, 1100, 800);
  textSize(50);
  fill(255);
  text("labyrinth", 550, 400);
  textAlign(CENTER);
  setupButton();
  createButton();
  }
}

int buttonX, buttonY, buttonWidth, buttonHeight;
boolean buttonHover = false;

void setupButton() {
  buttonX = 500;
  buttonY = 450;
  buttonWidth = 100;
  buttonHeight = 50;
}

void createButton() {  
  // Check if mouse is over the button
  if (mouseX > buttonX && mouseX < buttonX + buttonWidth && 
      mouseY > buttonY && mouseY < buttonY + buttonHeight) {
    buttonHover = true;
  } else {
    buttonHover = false;
  }
  
  // Draw button
  if (buttonHover) {
    fill(220);
  } else {
    fill(255);
  }
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  
  // Draw button text
  textSize(20);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Click Me", buttonX + buttonWidth / 2, buttonY + buttonHeight / 2);
}

void mousePressed() {
  if (buttonHover) {
    titleScreenOver = true;
  }
  
  if (titleScreenOver) {
     float d = dist(mouseX, mouseY, circleX, circleY);
    if (d < circleRadius) {
    dragging = true;
    offsetX = mouseX - circleX;
    offsetY = mouseY - circleY;
  }
  }
}
