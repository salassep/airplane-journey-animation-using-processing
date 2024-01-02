void gedungTinggi(){
  if (xReset) {
    xpesawat = -800;
    xReset = !xReset;
  }
  setGradientHorizontal(0, 0, width, height, color(255, 135, 66), color(255, 230, 66));
  pushMatrix();
  fill(150);
  translate (700,0);
  rect(100,200,200,400);
  
  noStroke();
  fill(200);
  quad(300,200,400,150,400,600,300,600);
  
  fill(175);
  quad(200,150,400,150,300,200,100,200);
  
  fill(67,86,236);
  for (int i=110; i<290; i+=30) {
    for (int j=250; j<600; j+=50) {
       rect(i,j,20,20);
    }
  }
  popMatrix();
}
