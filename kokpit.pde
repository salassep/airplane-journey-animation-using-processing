void kokpitView(){
  background(#8B9595);
  translate(width/2, height/2);
  stroke(0);
  strokeWeight(1);
  fill(255);
  //noFill();
  pushMatrix();
  noStroke();
  fill(#E8EFF5);  
  ellipse(10+x_awan,-50,70,45);  
  ellipse(50+x_awan,-50,85,65);  
  ellipse(100+x_awan,-50,70,35);
  
  ellipse(300+x_awan,-100,80,50);  
  ellipse(350+x_awan,-100,95,75);  
  ellipse(400+x_awan,-100,80,55);
  
  fill(#E8EFF5);  
  ellipse(-350-x_awan,-20,80,50);  
  ellipse(-400-x_awan,-20,95,75);  
  ellipse(-450-x_awan,-20,80,55);
  
  ellipse(-150-x_awan,-40,70,45);  
  ellipse(-190-x_awan,-40,85,65);  
  ellipse(-240-x_awan,-40,70,35);
  
  popMatrix();
  //layar tengah
  beginShape();
  stroke(0);
  fill(3, 248, 252,50);
  vertex(-280, -130); // titik kordinat 1 
  vertex(   0, -90); // titik kordinat 2 
  vertex( 280, -130); // titik kordinat 3 
  vertex( 280,  30); // titik kordinat 4
  vertex(  40, -10); // titik kordinat 5
  vertex( -40, -10); // titik kordinat 6
  vertex(-280,  30); // titik kordinat 7
  vertex(-280, -130); // titik kordinat 8=1 
  endShape();
  
  //layar kanan
  beginShape();
  vertex( 300, -132); // titik kordinat 1 
  vertex( 600, -260); // titik kordinat 2 
  vertex( 600,  230); // titik kordinat 3 
  vertex( 300,  32); // titik kordinat 4
  vertex( 300,  -132); // titik kordinat 5=1
  endShape();
  
  //layar kiri
  beginShape();
  vertex( -300, -132);//titik kordinat 1 
  vertex( -600, -260); // titik kordinat 2 
  vertex( -600,  230); // titik kordinat 3 
  vertex( -300,  32); // titik kordinat 4
  vertex( -300,  -132); // titik kordinat 5=1
  endShape();
  
  fill(110, 109, 109);
  //tempat meteran bawah
  beginShape();
  vertex(-250, 50); // titik kordinat 1 
  vertex( -60, 30); // titik kordinat 2
  vertex(  60, 30); // titik kordinat 3
  vertex( 250, 50); // titik kordinat 4
  vertex( 250, 100); // titik kordinat 5
  vertex(-250, 100); // titik kordinat 6
  vertex(-250, 50); // titik kordinat 7=1
  endShape();
  beginShape();
  vertex(-60, 100); // titik kordinat 1 
  vertex(-80, 180); // titik kordinat 2
  vertex( 80, 180); // titik kordinat 3
  vertex( 60, 100); // titik kordinat 4
  vertex(-60, 100); // titik kordinat 5=1
  endShape();
  beginShape();
  curveVertex(-100, 300); // titik kordinat 1 
  curveVertex(-100, 300); // titik kordinat 1 
  curveVertex(-90, 190); // titik kordinat 2
  curveVertex(  0, 175); // titik kordinat 3
  curveVertex( 90, 190); // titik kordinat 4
  curveVertex( 100, 300); // titik kordinat 5
  curveVertex( 100, 300); // titik kordinat 5
  endShape();
  
  //tempat meteran atas
  beginShape();
  vertex(-200, -300); // titik kordinat 1 
  vertex( -150, -150); // titik kordinat 2
  vertex( 0, -130); // titik kordinat 3
  vertex(  150, -150); // titik kordinat 4
  vertex(  200, -300); // titik kordinat 5
  endShape();
  
  //pramenter
  rect(-40, 0, 80, 20);
  for(int a=0,i=0; i<5; i++){
    ellipse(-30+a, 10, 10, 10);
    a+=15;
  }
  rect(-50, 35, 10, 10);
  rect(-50, 50, 20, 35);
  rect(-20, 35, 40, 50);
  rect( 30, 35, 20, 25);
  rect( 30, 65, 20, 20);
  rect( 30, 90, 20, 5);
  
  fill(0);
  rect(-125, 39, 50, 45);
  rect( 80, 39, 50, 45);
  rect(-200, 50, 50, 45);
  rect( 150, 50, 50, 45);
  
  stroke(255);
  ellipse(-100, 62, 45, 45);
  ellipse(-100, 62, 40, 40);
  ellipse(-100, 62, 20, 20);
  ellipse(-100, 62, 15, 15);
  ellipse(-100, 62, 1, 1);
  
  fill(#8B9595);
  stroke(0);
  rect(-125, 87, 50, 10);
  rect( 80, 87, 50, 10);
  
  //bagian tiang tengah
  beginShape();
  vertex(-10, -92); // titik kordinat 1 
  vertex( 0, -90); // titik kordinat 2 
  vertex( 10,  -92); // titik kordinat 3 
  vertex( 8, -10); // titik kordinat 4 
  vertex(-8, -10); // titik kordinat 5 
  vertex(-10, -92); // titik kordinat 6=1
  endShape();
  
  //bagian tiang kanan
  pushMatrix();
  translate(-width/2, -height/2);
  noStroke();
  beginShape();
  vertex(881, 170); // titik kordinat 1 
  vertex( 881, 330); // titik kordinat 2 
  vertex( 900,  331); // titik kordinat 3 
  vertex( 900, 168); // titik kordinat 4 
  vertex(880,170);
  endShape();
  popMatrix();
  
  //bagian tiang kiri
  pushMatrix();
  translate(-width/2, -height/2);
  noStroke();
  beginShape();
  vertex(320, 170); // titik kordinat 1 
  vertex( 320, 330); // titik kordinat 2 
  vertex( 301,  331); // titik kordinat 3 
  vertex( 301, 168); // titik kordinat 4 
  vertex(320,170);
  endShape();
  popMatrix();
  
  
  //kemumdi pesawat
  fill(110, 109, 109);
  stroke(0);
  rect(-210, 80, 20, 90);
  arc(-200, 70, 70, 70, radians(-20), radians(200), PIE);
  arc(-200, 70, 60, 60, radians(-10), radians(190), PIE);
  rect(-220, 73, 40, 20);
  beginShape();
  vertex(-215, 75); // titik kordinat 1 
  vertex(-215, 63); // titik kordinat 2 
  vertex(-200, 60); // titik kordinat 3 
  vertex(-185, 63); // titik kordinat 4 
  vertex(-185, 75); // titik kordinat 5 
  vertex(-215, 75); // titik kordinat 6=1
  endShape();
  
  rect( 190, 80, 20, 90);
  arc( 200, 70, 70, 70, radians(-20), radians(200), PIE);
  arc( 200, 70, 60, 60, radians(-10), radians(190), PIE);
  rect( 180, 73, 40, 20);
  beginShape();
  vertex( 185, 75); // titik kordinat 1 
  vertex( 185, 63); // titik kordinat 2 
  vertex( 200, 60); // titik kordinat 3 
  vertex( 215, 63); // titik kordinat 4 
  vertex( 215, 75); // titik kordinat 5 
  vertex( 185, 75); // titik kordinat 6=1
  endShape();
  
  //kursi pilot
  //kiri
  pushMatrix();
  translate(0, 0, 2);
  beginShape();
  fill(#BC8C22);
  curveVertex(-400, 300); // titik kordinat 1 
  curveVertex(-400, 300); // titik kordinat 1 
  curveVertex(-390, 140); // titik kordinat 2
  curveVertex(-260, 100); // titik kordinat 3
  curveVertex(-150, 140); // titik kordinat 4
  curveVertex(-140, 300); // titik kordinat 5
  curveVertex(-140, 300); // titik kordinat 5
  endShape();
  //kanan
  beginShape();
  curveVertex( 400, 300); // titik kordinat 1 
  curveVertex( 400, 300); // titik kordinat 1 
  curveVertex( 390, 140); // titik kordinat 2
  curveVertex( 260, 100); // titik kordinat 3
  curveVertex( 150, 140); // titik kordinat 4
  curveVertex( 140, 300); // titik kordinat 5
  curveVertex( 140, 300); // titik kordinat 5
  endShape();
  popMatrix();
  
  text(mouseX,95,60);
  text(mouseY,95,72);
  
  x_awan += 1.2;
  if (x_awan >= 700){
  x_awan = 0;
  }
  
}
