void game() {
  background(0, 255, 0);
  fill(255);
  rect(730, 10, 60, 30);
  fill(0);
  textSize(15);
  text("pause", 740, 30);
  
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);
  
  x = x + vx;
  y = y + vy;
  
  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }
}

void gameCLick() {
  if (mouseX > 730 && mouseX < 790 && mouseY > 10 && mouseY < 40) {
    mode = PAUSE;
  }
}
