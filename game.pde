void game() {

  background(game1Background); // background
  
  //drawing characters
  player(player1X, player1Y, player1D, selectedWeapon);
  player(player2X, player2Y, player2D, selectedWeapon2);
  
  //movement system
  if (wkey == true) player1X = player1X + 5;

  
}

void gameClicks() {

}


void player(float x, float y, float d, int weapon) {
  
  if (weapon == SABRE) {
    
  }
  if (weapon == HALBERD) {
    
  }
  if (weapon == SPEAR) {
    
  }
  
  circle(x, y, d); // body
  
}
