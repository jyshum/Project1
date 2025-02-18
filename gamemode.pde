void gameMode() {

  background(introBackground);
  
  noStroke();
  tactileR(100,300,100,500);
  rect(100,100,200,400); //optionWEP1 -- Sabre
  textSize(30);
  tactileR(400,600,100,500);
  rect(400,100,200,400); //optionWEP2 -- Halberd
  tactileR(700,900,100,500);
  rect(700,100,200,400); //optionWEP3 -- Spear
  tactileC(600,700, 80); 
  //playOption
  
  SabreTitle(155,200);
  
  if (selectedWeapon == SABRE) {
    
    pushMatrix();
    SabreTitle(450,690);
    textSize(15);
    text("Swing: 10", 450,710);
    text("Cooldown: 90", 450,730);
    popMatrix();
    
  }
  
  if (selectedWeapon == HALBERD) {
    
    pushMatrix();
    HalberdTitle(450,690);
    textSize(15);
    text("Heavy Swing: 20", 450,710);
    text("Cooldown: 200", 450,730);
    popMatrix();
    
  }
  
  if (selectedWeapon == SPEAR) {
    
    pushMatrix();
    SpearTitle(450,690);
    textSize(15);
    text("Thrust: 15", 450,710);
    text("Cooldown: 130", 450,730);
    popMatrix();
    
  }
  
  textSize(30);
  HalberdTitle(450,200);
  SpearTitle(760,200);
  
}

void gameModeClicks() {

  if (mouseX > 100 && mouseX < 300 && mouseY > 200 && mouseY < 600) {
    selectedWeapon = SABRE;
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 200 && mouseY < 600) {
    selectedWeapon = HALBERD;
  }
  if (mouseX > 700 && mouseX < 900 && mouseY > 200 && mouseY < 600) {
    selectedWeapon = SPEAR;
  }
  if (dist(600,700, mouseX,mouseY) < 40) {
  
     mode = TRANSITION;
     TRANSITIONMODE = GAMEMODE2;
     transitionCounter = 0;
     
  }
}

void tactileR(float xa, float xb, float ya, float yb) {
  if (mouseX > xa && mouseX < xb && mouseY > ya && mouseY < yb) {
    fill(black, 150);
  } else {
    fill(black, 50);
  }
}

void tactileC(float xa, float xb, float d) {

  if (dist(xa,xb, mouseX, mouseY) < d/2) {
    fill(black, 150);
  } else {
    fill(black, 50);
  }
  circle(xa,xb,d); 

}

void SabreTitle(float x, float y) {

  pushMatrix();
  translate(x,y);
  fill(white);
  text("Sabre",0,0);
  popMatrix();
  

}

void HalberdTitle(float x, float y) {

  pushMatrix();
  translate(x,y);
  fill(white);
  text("Halberd",0,0);
  popMatrix();
  

}

void SpearTitle(float x, float y) {

  pushMatrix();
  translate(x,y);
  fill(white);
  text("Spear",0,0);
  popMatrix();
  

}

void PlayTitle(float x, float y) {

  pushMatrix();
  translate(x,y);
  fill(white);
  text("PLAY",0,0);
  popMatrix();

}
