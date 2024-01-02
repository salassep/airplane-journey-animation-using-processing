import processing.sound.*;
PImage img;

SoundFile takeOffSound;
SoundFile announceTakeOff;
SoundFile machineSound;
SoundFile thunder;
SoundFile landing;
SoundFile mayday;

float a = 0;
float xpesawat = -50;
float ypesawat = 250;
float ykaki = 900;
float yroda = 920;
float jatuh = 0;
float ylandas = 100;
float x_awan = 0;

boolean xReset = true;

void setup() {
  size(1200, 600, P3D);
  smooth();
  img = loadImage("assets/img/bandaraLanding.jpg");
  takeOffSound = new SoundFile(this, "assets/take-off.wav");
  announceTakeOff = new SoundFile(this, "assets/announce-to.wav");
  machineSound = new SoundFile(this, "assets/machine-sound.wav");
  thunder = new SoundFile(this, "assets/thunder.wav");
  landing = new SoundFile(this, "assets/landing.wav");
  mayday = new SoundFile(this, "assets/mayday.wav");
}
void draw() {
  System.out.println(a);
  
  if (a <= 59) {
    latarBelakangLandasan();
    pesawat(xpesawat, 840, 0.5, 2400, true, false);
    if (a < 36) {
      if (!announceTakeOff.isPlaying()) {
        announceTakeOff.play();
      }
    }
    if (a >= 36) {
      announceTakeOff.stop();
      if (!takeOffSound.isPlaying()) {
        takeOffSound.play();
      }
    }
  } 
  
  if (a <= 65) {
    latarBelakangLandasan();
  }
  
  if (a >= 66 && a <= 98) {
    bentengChina();
    pesawat(xpesawat, 200, 0.3, 4800, false, true);
    if (!machineSound.isPlaying()) {
      machineSound.loop();
    }
    if (keyPressed) {
       if (key == 'x') {
         kokpitView();
       }
    }
  }
  
  if (a >= 98 && a <= 136) {
    pegunungan();
    pesawat(xpesawat, 200, 0.3, 4800, false, false);
    if (keyPressed) {
       if (key == 'x') {
         kokpitView();
       }
    }
  }
  
  if (a >= 137 && a < 5000) {
    diatasAwan();
    if (!thunder.isPlaying()) {
      thunder.loop();
    }
    pesawat(400, ypesawat, 1, 4800, false, true);
    
    if (ypesawat <= 700 && ypesawat > 0) {
      if (mousePressed) {
        ypesawat -= 1;
      } else {
        ypesawat += 1;
      }
    } else if (ypesawat <= 0 ) {
      machineSound.stop();
      thunder.stop();
      a = 5000;
    } else {
      machineSound.stop();
      thunder.stop();
      if (!mayday.isPlaying()) {
        mayday.play();
      }
      //ypesawat += 1;
      pesawat(xpesawat, 200, 0.3, 4800, false, false);
      gedungTinggi();
    }
  }
  
  if (a >= 5000 && a < 5020) {
    landing();
    pesawat(xpesawat, ylandas, 0.5, 5000, true, false);
    if (!landing.isPlaying()) {
      landing.play();
    }
    ylandas += 1;
  } 
  
  if (a >= 5020 && a <= 5057) {
    landing();
    pesawat(xpesawat-100, 960, 0.5, 2400, true, false);
  }
  
  if (a >= 5058) {
    fill(0);
    rect(0, 0, width, height);
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("SELAMAT DATANG \n DI HANEDA !", width/2, height/2);
  }
  
  
  
  a += 0.02;
}
