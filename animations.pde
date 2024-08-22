int damageEffectAlpha =255; // Alpha value for the damage effect
int fadeSpeed = 30; // Speed at which the effect fades ou


void DamageEffect() {
  noStroke();
  
  fill(255, 0, 0, damageEffectAlpha); // Red color with alpha transparency
   damageEffectAlpha =- fadeSpeed;
  rect(0, 0, width, height); // Cover the entire screen
  }
  


void drawDamageEffect(){


DamageEffect();
    damageEffectAlpha -= fadeSpeed; // Gradually reduce the alpha value
    if (damageEffectAlpha < 0) 
    {
      damageEffectAlpha = 0;


      }
      damageEffectAlpha = 100;
}
