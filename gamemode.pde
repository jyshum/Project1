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
  sabreMenu(185,420);
 
  if (selectedWeapon == SABRE) {
    
    pushMatrix();
    SabreTitle(450,680);
    textSize(15);
    text("Swing: 10", 450,700);
    text("Cooldown: 90", 450,720);
    text("Weight: 5lbs", 450,740);
    scale(0.5);
    sabreMenu(850,1450);
    popMatrix();
    
  }
  
  if (selectedWeapon == HALBERD) {
    
    pushMatrix();
    HalberdTitle(440,680);
    textSize(15);
    text("Heavy Swing: 20", 440,700);
    text("Cooldown: 200", 440,720);
    text("Weight: 12lbs", 440,740);
    popMatrix();
    
  }
  
  if (selectedWeapon == SPEAR) {
    
    pushMatrix();
    SpearTitle(450,680);
    textSize(15);
    text("Thrust: 15", 450,700);
    text("Cooldown: 130", 450,720);
    text("Weight: 7lbs", 450,740);
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

void sabreMenu(float x, float y) {

  pushMatrix();
  translate(x,y);
  fill(handle);
  rect(0,0,20,50); //handle
  stroke(gold);
  line(0,10,10,10);
  line(0,20,10,20);
  line(0,30,10,30);
  stroke(0);
  fill(guard);
  ellipse(10,0,60,10); //guard
  fill(blade);
  quad(2.5,-140, 25,-200, 17.5,0, 0,0); //shaftBlade
  fill(white);
  noStroke();
  quad(5,-5, 7,-132, 17,-155, 12, -10); //glimmer
  popMatrix();
  
}
