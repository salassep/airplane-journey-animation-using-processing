void landing() {
  if (xReset) {
    xpesawat = -50;
    xReset = !xReset;
  }
  image(img, 0, 0, 1200, 600);
  sirineJalanLanding();
}

void sirineJalanLanding() {
  noStroke();
  fill(4, 17, 37, 150);
  rect(0, 495, width, 54);
  fill(219, random(22, 150), 22);
  pushMatrix();
  translate(0, 0, 2);
  for (int i = 0; i <= 1200; i+=100) {
    rect(50 + i, 490, 6, 4, 2, 2, 0, 0);
    rect(50 + i, 544, 6, 4, 2, 2, 0, 0);
  }
  popMatrix();
}
