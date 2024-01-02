float posX = 0;

void diatasAwan() {
  if (ypesawat <= 700) {
    int kedip = second();
    setGradientHorizontal(0, 0, width, height, color(53, 62, 64), color(107, 168, 181));
    for (int i = 0; i <= 10000; i+=60){
      awanSadja(-80 + i, 410);
      awanSadja(-80 + i, 440);
      awanSadja(-80 + i, 470);
      awanSadja(-80 + i, 500);
      awanSadja(-80 + i, 530);
    }
    stroke(random(50, 255), random(50, 255), random(50, 255));
    if (kedip % 2 == 1) {
      float xpetir = random(0, 1200);
      line(xpetir, 0, xpetir + 20, 150);
      line(xpetir + 20, 150, xpetir + 25, 140);
      line(xpetir + 25, 140, xpetir + 45, 400);
    }
  }
}

void awanSadja(float posXAwal, float posY) {
  noStroke();
  fill(145, 152, 153);
  pushMatrix();
  translate(posXAwal, posY, 4);
  beginShape();
  vertex(150-80 + posX,50);
  vertex(210-80 + posX,50);
  vertex(210-80 + posX,80);
  vertex(150-80 + posX,80);
  endShape(CLOSE);
  bezier(150-80 + posX,50,100-80 + posX,50,100-80 + posX,80,150-80 + posX,80);
  bezier(210-80 + posX,50,260-80 + posX,50,260-80 + posX,80,210-80 + posX,80);
  stroke(0);
  bezier(150-80 + posX,50,160-80 + posX,35,200-80 + posX,35,210-80 + posX,50);
  noStroke();
  popMatrix();
  
  posX -= 0.002;
}
