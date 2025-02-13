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

//counter variables
int transitionCounter;

//color-pallette
color introBackground = #3B1414;
color black = ##000000;

void setup() {

  size(1000,800);
  
  mode = INTRO; //Set first mode to intro for the start
  
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
