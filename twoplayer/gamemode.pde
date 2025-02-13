void gameMode() {

  background(introBackground);
  
  noStroke();
  tactileR(100,300,200,600);
  rect(100,200,200,400); //optionWEP1
  tactileR(400,600,200,600);
  rect(400,200,200,400); //optionWEP2
  tactileR(700,900,200,600);
  rect(700,200,200,400); //optionWEP3
  
}

void gameModeClicks() {

  if (mouseX > 100 && mouseX < 300 && mouseY > 200 && mouseY < 600) {
    
  }
  
}

void tactileR(float xa, float xb, float ya, float yb) {
  if (mouseX > xa && mouseX < xb && mouseY > ya && mouseY < yb) {
    fill(black, 150);
  } else {
    fill(black, 50);
  }
}
