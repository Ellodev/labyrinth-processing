int score;
int delay;

void resetScore() {
  score = 100; //start Score hier ändern.
  delay = 5; //Delay Frames hier.
}

void scoreManager() {
  if(frameCount > delay) {
    frameCount = 0;
  }
  if(collision && frameCount == delay) {
      Diameter = Diameter - 15;  
      score = score - 20;
      
      
   
  }
  else 
  {
    saturation = 255;
  }
}
