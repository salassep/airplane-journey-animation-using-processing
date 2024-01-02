void bentengChina() {
  int kedip = second();
  setGradientHorizontal(0, 0, width, height/2+200, color(41, 67, 87), color(46, 81, 107));
  pushMatrix();
  translate(0, 0, 1);
  gedung();
  bintang(kedip);
  bulan();
  popMatrix();
}

void gedung(){
  noStroke();
  fill(0);
  rect(0,420,80,180);
  rect(50,350,80,250);
  rect(130,420,80,180);
  rect(210,350,80,250);
  rect(290,420,80,180);
  rect(370,350,80,250);
  rect(450,420,80,180);
  rect(530,350,80,250);
  rect(610,420,80,180);
  rect(690,350,80,250);
  rect(770,420,80,180);
  rect(850,350,80,250);
  rect(930,420,80,180);
  rect(1010,350,80,250);
  rect(1090,420,80,180);
  rect(1170,350,80,250);
  rect(1250,420,80,180);
}

void bulan (){
  fill(#EDEBEB);
  pushMatrix();
  translate(140,160,0);
  lights();
  noStroke ();
  sphere(30);
  popMatrix();
}

void bintang(int kedip){
  noStroke();
  if (kedip % 2 == 1) {
    fill(235, 169, 26);
  } else {
    fill(235, 210, 26);
  }
  pushMatrix();
  translate(0, 0, 0);
  //fill(235, random(127, 207), 26);
  ellipse(50,10,5,5);
  ellipse(100,50,5,5);
  ellipse(170,30,5,5);
  ellipse(290,80,5,5);
  ellipse(300,5,5,5);
  ellipse(360,10,5,5);
  ellipse(430,20,5,5);
  ellipse(480,60,5,5);
  ellipse(500,60,5,5);
  ellipse(550,80,5,5);
  ellipse(580,30,5,5);
  ellipse(610,100,5,5);
  ellipse(660,80,5,5);
  ellipse(730,40,5,5);
  ellipse(790,60,5,5);
  ellipse(840,80,5,5);
  ellipse(890,120,5,5);
  ellipse(930,70,5,5);
  ellipse(980,30,5,5);
  ellipse(1040,90,5,5);
  ellipse(1100,60,5,5);
  ellipse(1140,50,5,5);
  ellipse(1190,100,5,5);
  popMatrix();
}
