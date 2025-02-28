//Jared-Shum

//mode-variables
int mode;
final int INTRO = 0;
final int GAMEMODE = 1;
final int GAMEMODE2 = 2;
final int GAME = 3;
final int GAMEOVER = 4;
final int PAUSE = 5;
final int TRANSITION = 6;
int TRANSITIONMODE;
//mode-game-variables
int selectedWeapon;
int selectedWeapon2;
final int SABRE = 7;
final int HALBERD = 8;
final int SPEAR = 9;
final int SABRE2 = 10;
final int HALBERD2 = 11;
final int SPEAR2 = 12;
final int weaponSabreMode = 13;
final int weaponHalberdMode = 14;
final int weaponSpearMode = 15;
int attackMode = 16;
final int idleMode = 17;

//entity-variables
float player1X, player1attackX, player1Y, player1attackY, player1Size, player1Angle, player2X, player2attackX, player2Y, player2attackY, player2Size, player2Angle; //paddles

float rotateW;

//keyboard variables
boolean wkey, skey, akey, dkey, ekey, upkey, downkey, leftkey, rightkey, ctrlkey;

//HP Variables
float Player1HP;
float Player2HP;

//counter variables
int transitionCounter;
int attackHitTimer;
int attackHPTimer;
int attackCDTimer;

//color-pallette
color introBackground = #3B1414;
color game1Background = #814230;
color black = #000000;
color white = #FFFFFF;
color player = #5F0D0D;
color playerHit = #FF2E2E;
color hitBox = #D33220;
color handle = #5A3B29;
color guard = #9B4C1E;
color blade = #B4AFAB;
color gold = #F5E211;


void setup() {

  size(1000,800);
  
  mode = INTRO; //Set first mode to intro for the start
  
  //initialize paddles
  player1X = 0 + 100;
  player1attackX = player1X;
  player1Y = height/2;
  player1attackY = player1Y;
  player1Size = 100;
  player1Angle = 45;

  player2X = width - 100;
  player2attackX = player2X;
  player2Y = height/2;
  player2attackY = player2Y;
  player2Size = 100;
  player2Angle = 45;
  
  //initialize keyboard variables
  wkey = skey = akey = dkey = ekey = upkey = downkey = leftkey = rightkey = false;
  
  //other
  attackMode = idleMode;
  rotateW = 1.2;
  
  //initialize hp
  Player1HP = 100;
  Player2HP = 100;
  
  //initialize timer variables
  attackHitTimer = 0;
  attackHPTimer = 0;
  attackCDTimer = 0;
  
  
}

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAMEMODE) {
    gameMode();
  } else if (mode == GAMEMODE2) {
    gameMode2();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == TRANSITION) {
    transition();
  } else {
    println("Error: Mode = " + mode);
  }
  
}

void reset() {

}
