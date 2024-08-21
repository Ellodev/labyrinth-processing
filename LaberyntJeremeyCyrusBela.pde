void setup()  { // draws window, sets color 
  size(1100,800);

  background(255,255,255);
  
}

void draw() {
  map1();
  fill(255, 0, 0);
  stroke(255, 0, 0);
  circle(mouseX, mouseY, Diameter);
  detectEnd();
}
