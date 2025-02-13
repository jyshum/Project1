void intro() {
  
  background(introBackground); //setting background color
  textSize(80); //setting text size
  text("FALLEN", 370,300); //game title
  
}

void introClicks() {
  if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 800) {
    
     mode = TRANSITION;
     TRANSITIONMODE = GAMEMODE;
     transitionCounter = 0;
    
  }
}
