void game() {
  //background
  image(greenOmbre, 0, 0, width, height/2);
  image(redOmbre, 0, 400, width, height/2);
  stroke(200);
  line(0, height/2, width, height/2);

  //text
  fill(0);
  textSize(100);
  text("YES!", width/2, 100);
  text("NO!", width/2, 700);
  textSize(25);
  text("score: " + score, 750, 775);

  //game text
  textSize(100);
  wordLocation+=30;
  fill(colours[colourNumbers]);
  text(words[wordNumbers], wordLocation, height/2);
  
  //timer
  if (wordLocation > width + 150) mode = GAMEOVER;
}

void gameClicks() {
  //game logic
  if (mouseY < width/2) {
    if (colourNumbers == wordNumbers) {
      score++;
      fill(colours[colourNumbers]);
      text(words[wordNumbers], wordLocation, height/2);
      randomize();
    } else mode = GAMEOVER;
  } else {
    if (colourNumbers == wordNumbers) mode = GAMEOVER;
    else {
      score++;
      fill(colours[colourNumbers]);
      text(words[wordNumbers], wordLocation, height/2);
      randomize();
    }
  }
}
