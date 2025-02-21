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

//entity-variables
float player1X, player1Y, player1Size, player1Angle, player2X, player2Y, player2Size, player2Angle; //paddles

//keyboard variables
boolean wkey, skey, akey, dkey, ekey, upkey, downkey, leftkey, rightkey;

//counter variables
int transitionCounter;

//color-pallette
color introBackground = #3B1414;
color game1Background = #814230;
color black = #000000;
color white = #FFFFFF;
color player = #5F0D0D;
color handle = #5A3B29;
color guard = #9B4C1E;
color blade = #B4AFAB;
color gold = #F5E211;

void setup() {

  size(1000,800);
  
  mode = INTRO; //Set first mode to intro for the start
  
  //initialize paddles
  player1X = 0 + 100;
  player1Y = height/2;
  player1Size = 100;
  player1Angle = 45;

  player2X = width - 100;
  player2Y = height/2;
  player2Size = 100;
  player2Angle = 45;
  
  //initializze keyboard variables
  wkey = skey = akey = dkey = ekey = upkey = downkey = leftkey = rightkey = false;
  
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
