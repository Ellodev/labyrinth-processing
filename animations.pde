int fadeSpeed = 15;
int saturation= 200;

int lavaAnimFrames;

PImage Lava;

void drawDamageEffect(int saturation
)
{
  while(saturation > 20)
  {
  noStroke();
  fill(saturation,0,0);
  rect(0,0,width,height);
  }
  
  saturation =- 10;
  
}

void lavaAnimation() {
  if(lavaAnimFrames < 20) {
    Lava = loadImage("Lava1.png");
    lavaAnimFrames ++;
  } else if (lavaAnimFrames < 40) {
    Lava = loadImage("Lava2.png");
    lavaAnimFrames ++;
  } else if (lavaAnimFrames < 60) {
    Lava = loadImage("Lava3.png");
    lavaAnimFrames ++;
  } else if (lavaAnimFrames < 80) {
    Lava = loadImage("Lava4.png");
    lavaAnimFrames ++;
  } else if (lavaAnimFrames < 90) {
    Lava = loadImage("Lava5.png");
    lavaAnimFrames ++;
  } else {
    lavaAnimFrames = 0;
  }
}
