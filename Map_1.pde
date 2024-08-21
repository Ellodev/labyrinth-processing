

boolean map1() {
  noStroke();
    
  fill(255); // White fill for squares
  //needs optimiziation
  background(0);
  fill(0, 0, 255);
  rect(0,100,100,100);
  if (isInStart)  {
    fill(255);
    rect(100,100,100,400);
    rect(100,500,400,100);
    rect(400,100,100,400);
    rect(500,100,200,100);
    rect(600,200,200,100);
    rect(700,300,100,300);
    rect(800,500,300,100);
    fill(0, 255, 0);
    rect(1000, 500, 100, 100);
  }
return true;
}
