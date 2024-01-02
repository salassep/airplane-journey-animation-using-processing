void pesawat(float x, float y, float ukuran, int jarak, boolean roda, boolean night){
  int kedip = second();
  pushMatrix();
  translate(0, 0, 3);
  if (a >= 37.0 && a <= 66) {
    rotateZ(-0.1);
  }
  if (a >= 5000 && a < 5020) {
    rotateZ(-0.1);
  }
  if (ypesawat >= 701) {
    if (xpesawat >= 2330) {
      pushMatrix();
      translate(0, 0, 8);
      fill(0);
      rect(0, 0, width, height);
      fill(255);
      textSize(30);
      textAlign(CENTER);
      text("R.I.P \n KOMBENG AIRLINES", width/2, height/2);
      xpesawat = 2361;
      popMatrix();
    }
    rotateZ(0.2);
  }
  scale(ukuran);
  
  //roda
  if (roda) {
    if (a >= 42 && a < 1000) {
      ykaki = lerp(ykaki, 830, 0.001);
      yroda = lerp(yroda, 850, 0.001);
      noStroke();
      fill(156, 161, 157);
      rect(x + 180, ykaki, 10, 20, 0, 0, 5, 5);
      rect(x + 365, ykaki, 10, 20, 0, 0, 5, 5);
      fill(0);
      ellipse(x + 185, yroda, 20, 20);
      ellipse(x + 370, yroda, 20, 20);
    } else if (a >= 5000 && a < 5020){
      noStroke();
      fill(156, 161, 157);
      rect(x + 180, ylandas + 60, 10, 20, 0, 0, 5, 5);
      rect(x + 365, ylandas + 60, 10, 20, 0, 0, 5, 5);
      fill(0);
      ellipse(x + 185, ylandas + 80, 20, 20);
      ellipse(x + 370, ylandas + 80, 20, 20);
    } else {
      noStroke();
      fill(156, 161, 157);
      rect(x + 180, y + 60, 10, 20, 0, 0, 5, 5);
      rect(x + 365, y + 60, 10, 20, 0, 0, 5, 5);
      fill(0);
      ellipse(x + 185, y + 80, 20, 20);
      ellipse(x + 370, y + 80, 20, 20);
    }
  }
  
 //badan pesawat
  stroke(245, 66, 66);
  strokeWeight(.5);
  fill(255);
  beginShape();
  vertex(x, y);
  vertex(x + 375, y);
  vertex(x + 405, y + 8);
  vertex(x + 425, y + 28);
  vertex(x + 438, y + 36);
  vertex(x + 443, y + 41);
  vertex(x + 443, y + 46);
  vertex(x + 438, y + 51);
  vertex(x + 398, y + 65);
  vertex(x + 93, y + 65);
  vertex(x + 12, y + 40);
  vertex(x, y + 20);
  vertex(x, y);
  endShape();
  
  //jendela
  noStroke();
  if (night) {
    fill(245, 230, 66);
  } else {
    fill(103, 109, 110);
  }
  float xJendela;
  for (xJendela = x + 95; xJendela < x + 370; xJendela+= 20){
    ellipse(xJendela, y + 25, 10, 13);
  }
  
  //pintu belakang
  stroke(103, 109, 110);
  noFill();
  beginShape();
  vertex(x + 66, y + 13);
  vertex(x + 67, y + 41);
  vertex(x + 79, y + 41);
  vertex(x + 80, y + 13);
  vertex(x + 66, y + 13);  
  endShape();
  
  //pintu depan
  beginShape();
  vertex(x + 371, y + 13);
  vertex(x + 372, y + 41);
  vertex(x + 384, y + 41);
  vertex(x + 385, y + 13);
  vertex(x + 371, y + 13);  
  endShape();
  
  //ekor atas
  noStroke();
  fill(245, 66, 66);
  beginShape();
  vertex(x + 15, y + 5);
  vertex(x + 105, y + 2);
  vertex(x + 70, y - 14);
  vertex(x + 30, y - 74);
  vertex(x + 20, y - 80);
  vertex(x - 5, y - 83);
  vertex(x + 15, y + 5);
  endShape();
  
  //ekor samping
  noStroke();
  fill(245, 66, 66);
  beginShape();
  vertex(x + 10, y + 15);
  vertex(x + 50, y + 15);
  vertex(x + 50, y + 12);
  vertex(x, y - 5);
  vertex(x - 15, y);
  vertex(x + 10, y + 15);
  endShape();
  
  //sayap
  noStroke();
  fill(245, 66, 66);
  beginShape();
  vertex(x + 185, y + 40);
  vertex(x + 265, y + 40);
  vertex(x + 165, y + 25);
  vertex(x + 164, y + 24);
  vertex(x + 144, y - 14);
  vertex(x + 132, y - 14);
  vertex(x + 142, y + 24);
  vertex(x + 144, y + 30);
  vertex(x + 185, y + 40);
  endShape();
  
  //mesin
  noStroke();
  fill(245, 66, 66);
  beginShape();
  vertex(x + 225-25, y + 60-7);
  vertex(x + 235-25, y + 55-7);
  vertex(x + 243-25, y + 50-7);
  vertex(x + 295-25, y + 50-7);
  vertex(x + 298-25, y + 47-7);
  vertex(x + 303-25, y + 52-7);
  vertex(x + 303-25, y + 87);
  vertex(x + 298-25, y + 90);
  vertex(x + 295-25, y + 87);
  vertex(x + 243-25, y + 80 + 5);
  vertex(x + 235-25, y + 75 + 5);
  vertex(x + 225-25, y + 70 + 5);
  vertex(x + 225-25, y + 60-7);
  endShape();
  
  //kokpit
  noStroke();
  fill(103, 109, 110);
  beginShape();
  vertex(x + 410, y + 13);
  vertex(x + 404, y + 13);
  vertex(x + 401, y + 15);
  vertex(x + 393, y + 15);
  vertex(x + 393, y + 25);
  vertex(x + 401, y + 25);
  vertex(x + 404, y + 23);
  vertex(x + 419, y + 23);
  vertex(x + 410, y + 13);
  endShape();
  
  //lampu
  if (kedip % 2 == 1) {
    fill(255, 255, 255, 50);
    ellipse(x + 134, y - 13, 8, 8);
    ellipse(x, y - 60, 8, 8);
    fill(255);
    ellipse(x + 134, y - 13, 5, 5);
    ellipse(x, y - 60, 5, 5);
    fill(245, 52, 34, 50);
    ellipse(x + 375, y, 8, 8);
    fill(245, 52, 34);
    ellipse(x + 375, y, 5, 5);
  }
 
  popMatrix();
  
  if (xpesawat >= jarak) {
    xpesawat = -800;
  }
  
  if (a >= 5020) {
    xpesawat += 1.0;
  } else if (a >= 40.0) {
    xpesawat += 3.0;
  } else if (a >= 25.0) {
    xpesawat += 2.5;
  } else if (a >= 20.0) {
    xpesawat += 1.5;
  } else if (a >= 15.0) {
    xpesawat += 1.0;
  } else { 
    xpesawat += 0.5;
  }
}
