int fadeSpeed = 15;
int saturation= 200;

int lavaAnimFrames;
int playerAnimFrames;
int endAnimFrames;

PImage Player;
PImage Lava;
PImage endTexture;

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

void endAnimation() {
  if(endAnimFrames < 6) {
    endTexture = loadImage("End1.png");
    endAnimFrames ++;
  } else if(endAnimFrames < 12) {
    endTexture = loadImage("End2.png");
    endAnimFrames ++;
  } else if(endAnimFrames < 18) {
    endTexture = loadImage("End3.png");
    endAnimFrames ++;
  } else if(endAnimFrames < 24) {
    endTexture = loadImage("End4.png");
    endAnimFrames ++;
  } else if(endAnimFrames < 30) {
    endTexture = loadImage("End5.png");
    endAnimFrames ++;
  } else if(endAnimFrames < 36) {
    endTexture = loadImage("End6.png");
    endAnimFrames ++;
  } else if(endAnimFrames < 42) {
    endTexture = loadImage("End7.png");
    endAnimFrames ++;
  } else if(endAnimFrames < 48) {
    endTexture = loadImage("End8.png");
    endAnimFrames ++;
  } else {
    endAnimFrames = 0;
  }
}
    
  
