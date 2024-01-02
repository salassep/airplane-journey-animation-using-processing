float bendera = 2;
float kibarBendera = 0; 

void pegunungan(){
  noStroke();
  setGradientHorizontal(0, 0, width, height/2+200, color(93, 3, 252), color(253, 154, 115));
  pushMatrix();
  translate(0, 0, 1);
  rumput();
  pohon();
  gunung();
  bendera(0);
  bendera(-100);
  bendera(400);
  bendera(600);
  bendera(800);
  matahari();
  popMatrix();
}

void gunung(){
  fill(#33250c);
  bezier(0-100, 400, 300-100, 50, 200-100, 100, 400-100, 400);
  bezier(0, 400, 300, 50, 200, 100, 400, 400);
  bezier(0+400, 400, 300+400, 50, 200+400, 100, 400+400, 400);
  bezier(0+600, 400, 300+600, 50, 200+600, 100, 400+600, 400);
  bezier(0+800, 400, 300+800, 50, 200+800, 100, 400+800, 400);
}

void bendera(int posX) {
  bendera = lerp(bendera, 10, 0.1);
  
  if ( kibarBendera >= 15 ) {
    kibarBendera = 0;
  }
  
  if (kibarBendera >= 10) {
    bendera = lerp(bendera, 2, 0.1);
  }
  
  pushMatrix();
  translate(231, 138);
  fill(199, 36, 36);
  rect(posX, 0, bendera, 5);

  fill(255, 255, 255);
  rect(posX, 5, bendera, 5);
 
  popMatrix();

  //flagpole
  fill(0);
  rect(230 + posX,138,1,20);
  
  kibarBendera += 0.5;
}

void matahari(){
  noStroke();
  translate(380,360,-51);
  fill(#fcfc0a);
  sphere(50);
}

//backgorund
void rumput(){
  noStroke();
  fill(#0b6623);
  rect(0,400,1200,600);
}

void pohon(){
  //pohon1 dari kiri ke kanan
  fill(#33250c);
  rect(60,550,10,80);
  fill(#038301);
  triangle(67,430,95,500,35,500);
  triangle(67,460,95,530,35,530);
  triangle(67,490,95,560,35,560);
  
  //pohon2
  fill(#33250c);
  rect(60+1000,550,10,80);
  fill(#038301);
  triangle(67+1000,430,95+1000,500,35+1000,500);
  triangle(67+1000,460,95+1000,530,35+1000,530);
  triangle(67+1000,490,95+1000,560,35+1000,560);
  
  //pohon3
  fill(#33250c);
  rect(230,540,10,80);
  fill(#038301);
  triangle(32+200,430-20,60+200,500-20,10+200,500-20);
  triangle(32+200,460-20,60+200,530-20,10+200,530-20);
  triangle(32+200,490-20,60+200,560-20,10+200,560-20);
  
  //pohon4
  fill(#33250c);
  rect(330,520,10,80);
  fill(#038301);
  triangle(32+300,510-80,60+300,580-80,10+300,580-80);
  triangle(32+300,540-80,60+300,610-80,10+300,610-80);
  triangle(32+300,570-80,60+300,640-80,10+300,640-80);
  
  //pohon5
  fill(#33250c);
  rect(430,600,10,80);
  fill(#038301);
  triangle(32+400,510-10,60+400,580-10,10+400,580-10);
  triangle(32+400,540-10,60+400,610-10,10+400,610-10);
  triangle(32+400,570-10,60+400,640-10,10+400,640-10);
  
  //pohon6
  fill(#33250c);
  rect(530,520,10,80);
  fill(#038301);
  triangle(32+500,510-80,60+500,580-80,10+500,580-80);
  triangle(32+500,540-80,60+500,610-80,10+500,610-80);
  triangle(32+500,570-80,60+500,640-80,10+500,640-80);
  
  //pohon7
  fill(#33250c);
  rect(630,550,10,80);
  fill(#038301);
  triangle(32+600,510-50,60+600,580-50,10+600,580-50);
  triangle(32+600,540-50,60+600,610-50,10+600,610-50);
  triangle(32+600,570-50,60+600,640-50,10+600,640-50);
  
  //pohon8
  fill(#33250c);
  rect(730,580,10,80);
  fill(#038301);
  triangle(32+700,510-30,60+700,580-30,10+700,580-30);
  triangle(32+700,540-30,60+700,610-30,10+700,610-30);
  triangle(32+700,570-30,60+700,640-30,10+700,640-30);
}
