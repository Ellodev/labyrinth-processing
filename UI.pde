import controlP5.*;

void displayStart() {
    textAlign(CENTER);
    fill(0, 0, 255);
    textSize(50);
    text("Move to the blue to start.", 550, 400);
}

void displayEnd() {
  background(0);
  textAlign(CENTER);
  textSize(40);
  fill(255);
  if (achievedLeaderboard == true) {
    text("DONE!, you made it on the leaderboard", 550, 250);
    textSize(20);
    text("enter your name to be added", 550, 270);
  } else if (achievedLeaderboard == false) {
    text("DONE!, sadly you didnt make it on the leaderboard", 550, 250);
  } else if (isDead)
  {
  background(255, 0, 0);
  text("LOSER!!!!", 550, 350);
  text("SCORE: " + String.valueOf(score), 550, 450); 
 
  } else 
  text("SCORE: " + String.valueOf(score), 550, 200); 
}

ControlP5 cp5;
Textfield textField;
String inputText = "";

void askName() {
  cp5 = new ControlP5(this);
  
  textField = cp5.addTextfield("input")
                 .setPosition(450, 290)
                 .setSize(200, 40)
                 .setFocus(true)
                 .setColor(color(0, 0, 255))
                 .setColorBackground(color(255, 255, 255))
                 .setColorForeground(color(0, 0, 255));
  
  cp5.addButton("submit")
     .setPosition(450, 350)
     .setSize(200, 40)
     .onClick(new CallbackListener() {
       public void controlEvent(CallbackEvent event) {
         playerName = textField.getText();
         println(playerName);
       }
     });
}
