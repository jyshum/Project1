void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameOverClicks();
  } else if (mode == GAMEMODE) {
    gameModeClicks();
  } else if (mode == GAMEMODE2) {
    gameMode2Clicks();
  }
}
