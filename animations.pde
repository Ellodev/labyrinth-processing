int fadeSpeed = 15;
int saturation= 200;

void drawDamageEffect(int saturation, int fadespeed)
{
  while(saturation > 20)
  {
  noStroke();
  fill(saturation,0,0);
  rect(0,0,width,height);
  }
  
  saturation =- 10;
  
}
