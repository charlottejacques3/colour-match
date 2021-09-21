void gameover() {
  background(#F02727);
  
  //text
  fill(0);
  textSize(125);
  text("YOU LOST!", width/2, 300);
  textSize(40);
  text("score: " + score, width/2, 450);
  text("high score: " + highScore, width/2, 500);
  text("click to try again", width/2, 600);
  
  if(score > highScore) highScore = score;
}

void gameoverClicks() {
  mode = INTRO;
  titleStop();
  score = 0;
  randomize();
}
