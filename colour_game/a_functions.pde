void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}

void randomize() {
  doesItMatch = int(random(0, 2)); //if doesItMatch == 0, it matches; if doesItMatch == 1; it doesn't match
  if (doesItMatch == 0) {
    wordNumbers = int(random(0, 7));
    colourNumbers = wordNumbers;
  } else if (doesItMatch == 1) {
    wordNumbers = int(random(0, 7));
    colourNumbers = int(random(0, 7));
    while (wordNumbers == colourNumbers) wordNumbers = int(random(0, 7));
  }

  wordLocation = -150;
}

void titleStop() {
  titleAngle = 360;
  titleSize = 87;
  textSize(25);
  text("click anywhere to begin", width/2, 600);
}
