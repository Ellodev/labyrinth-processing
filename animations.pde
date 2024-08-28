int fadeSpeed = 15;
int saturation= 200;

int lavaAnimFrames;
int playerAnimFrames;

PImage Player;
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
  } else if (lavaAnimFrames < 100) {
    Lava = loadImage("Lava5.png");
    lavaAnimFrames ++;
  } else {
    lavaAnimFrames = 0;
  }
}

void playerAnimation() {
  if(playerAnimFrames < 2) {
    Player = loadImage("PlayerRun1.png");
    playerAnimFrames ++;
  } else if(playerAnimFrames < 4) {
    Player = loadImage("PlayerRun2.png");
    playerAnimFrames ++;
  } else if(playerAnimFrames < 6) {
    Player = loadImage("PlayerRun3.png");
    playerAnimFrames ++;
  } else if(playerAnimFrames < 8) {
    Player = loadImage("PlayerRun4.png");
    playerAnimFrames ++;
  } else {
    playerAnimFrames = 0;
  }
}
  
