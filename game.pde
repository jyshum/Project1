void game() {

  
  background(game1Background); // background

   //attack system
  if (ekey == true) {
    attackHitTimer = 0;
    attackMode = weaponSabreMode;
  }
  
  
  
    if (attackMode == weaponSabreMode) {
    if (attackHitTimer <= 30) {
      rotateW = rotateW + 0.04;
      attackHitTimer = attackHitTimer + 1;
      sabreHitbox(player1X + 150*cos(radians(player1Angle)),player1Y + 150*sin(radians(player1Angle)));  
    } if (attackHitTimer > 30) {
      rotateW = 1.1;
      fill(game1Background);
      noStroke();
      circle(player1X + 150*cos(radians(player1Angle)),player1Y + 150*sin(radians(player1Angle)), 0);
      attackCDTimer = 0;
      attackCDTimer = attackCDTimer + 1;
    }
    
    println(attackCDTimer);

    } 
  
  //if (attackMode == weaponSabreMode) {
  //  if (attackHitTimer <= 30) {
  //    rotateW = rotateW + 0.04;
  //    attackHitTimer = attackHitTimer + 1;
  //    sabreHitbox(player1X + 150*cos(radians(player1Angle)),player1Y + 150*sin(radians(player1Angle)));  
  //  } if (attackHitTimer > 30) {
  //    rotateW = 1.1;
  //    fill(game1Background);
  //    noStroke();
  //    circle(player1X + 150*cos(radians(player1Angle)),player1Y + 150*sin(radians(player1Angle)), 150);
  //    attackCDTimer = 0;
  //    attackCDTimer = attackCDTimer + 1;
  //    if (attackCDTimer > 90) {
  //    attackCDTimer = 0;
  //    }
  //  }
  //}
  
  if (attackMode == idleMode) {
  }
  

  //drawing characters
  player(player1X, player1Y, player1Size, selectedWeapon, player1Angle);
  player(player2X, player2Y, player2Size, selectedWeapon2, player2Angle);

  //movement system
  if (wkey == true) {
    player1X = player1X + 4*cos(radians(player1Angle));
    player1Y = player1Y + 4*sin(radians(player1Angle));
  }
  if (skey == true) ;
  if (akey == true) player1Angle = player1Angle - 3;
  if (dkey == true) player1Angle = player1Angle + 3;
  
  if (upkey == true) {
    player2X = player2X + 4*cos(radians(player2Angle));
    player2Y = player2Y + 4*sin(radians(player2Angle));
  }
  if (downkey == true) ;
  if (leftkey == true) player2Angle = player2Angle - 3;
  if (rightkey == true) player2Angle = player2Angle + 3;

  //hitbox system
  
  if (dist(player1X + 150*cos(radians(player1Angle)),player1Y + 150*sin(radians(player1Angle)), player2X, player2Y) < 50) {

    attackHPTimer = attackHPTimer + 1;
    if (attackHPTimer <= 1) {
    Player2HP = Player2HP - 10;
    } if (attackHPTimer > 100) {
    attackHPTimer = 0;
    }
    
  } else {
  
  }

  if (Player2HP == 0) {
  
     mode = TRANSITION;
     TRANSITIONMODE = INTRO;
     transitionCounter = 0;
    
  }
  
  println(Player2HP);
}


void player(float x, float y, float size, int weapon, float angle) {

  pushMatrix();
  translate(x, y);
  rotate(radians(angle));

  if (weapon == SABRE) {
    
    pushMatrix();
    fill(0);
    circle(0,0,20);
    translate(75,-52);
    scale(0.6);
    rotate(PI/rotateW);
    sabreMenu(-15,-20);
    popMatrix();
    
  }
  if (weapon == HALBERD) {
  }
  if (weapon == SPEAR) {
  }


  fill(player);
  circle(0, 0, size); // body
  circle(0+65, 0-50, size/3.5); //arm
  circle(0+65, 0+50, size/3.5); //arm
  stroke(0);
  line(0,0, 50, 0);
  //fill(black);
  //circle(30, 0, 5); // eye1
  //circle(30, 0, 5);  // eye2

  
  popMatrix();
}

void sabreHitbox(float x, float y) {

  pushMatrix();
  translate(x,y);
  noStroke();
  fill(hitBox);
  circle(0,0,130);
  popMatrix();

}

void gameClicks() {

}
