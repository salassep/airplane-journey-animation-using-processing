color langitAtas, langitBawah;

void latarBelakangLandasan() {
  langitAtas = color(15, 89, 192);
  langitBawah = color(255, 255, 255);
  
  setGradientHorizontal(0, 0, width, height/2 + 100, langitAtas, langitBawah);
  setGradientHorizontal(0, 400, width, 40, color(99, 212, 74), color(95, 184, 75));
  setGradientHorizontal(0, 440, width, 60, color(88, 92, 87), color(121, 125, 120));
  setGradientHorizontal(0, 500, width, 100, color(227, 194, 150), color(168, 141, 106));
  stroke(255);
  strokeWeight(5);
  line(0, 500, width, 500);
  line(0, 440, width, 440);
  
  for (int i = 0; i <= 1200; i+=100) {
    pohon(i);
  }
  
  awan();
  sirineJalan();
}


void setGradientHorizontal(int x, int y, float w, float h, color from, color to) {
 for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(from , to, inter);
      stroke(c);
      line(x, i, x+w, i);
 }
}

void pohon(int i) {
  noStroke();
  fill(71, 52, 16);
  pushMatrix();
  translate(0, 0, 1);
  rect(50 + i, 320, 10, 80, 2);
  fill(#038301);
  triangle(52 + i,240,80 + i,310,30 + i,310);
  triangle(52 + i,280,80 + i,340,30 + i,340);
  triangle(52 + i,300,80 + i,370,30 + i,370);
  popMatrix();
}

void awan() {
  fill(255);
  pushMatrix();
  translate(0, 10, 1);
  for (int i = 0; i < width; i = i+200) {
    beginShape();
    vertex(150-80+i,50);
    vertex(210-80+i,50);
    vertex(210-80+i,80);
    vertex(150-80+i,80);
    endShape(CLOSE);
    bezier(150-80+i,50,100-80+i,50,100-80+i,80,150-80+i,80);
    bezier(150-80+i,80,160-80+i,95,200-80+i,95,210-80+i,80);
    bezier(210-80+i,50,260-80+i,50,260-80+i,80,210-80+i,80);
    bezier(150-80+i,50,160-80+i,35,200-80+i,35,210-80+i,50);
  }
  popMatrix();
}

void sirineJalan() {
  noStroke();
  fill(219, random(22, 150), 22);
  pushMatrix();
  translate(0, 0, 2);
  for (int i = 0; i <= 1200; i+=100) {
    rect(50 + i, 438, 6, 4, 2, 2, 0, 0);
    rect(50 + i, 492, 6, 4, 2, 2, 0, 0);
  }
  popMatrix();
}
