class bat {
  PImage batImg;
  PImage batImg2;
  PVector pos = new PVector(-50, 300);
  PVector dir = new PVector(0, 0); 
  boolean firstFrame = true;
  int lastTime = 0;

  bat() {


    batImg = loadImage("bat1.png");
    batImg2 = loadImage("bat2.png");
  }

  void draw() {
    fill(255, 0, 0);
    imageMode(CENTER);
    tint(0, 0, 0);
    pos.x +=3.5;
    if (pos.x > 800) {
      pos.x = -50;
      pos.y = random(0,800);
    }
    if (dist(guy.pos.x, guy.pos.y, pos.x, pos.y ) < 65) {
      Scene = 1;
    }
    if (firstFrame == true) {
      image(batImg, pos.x, pos.y, 170, 100);
    } else {
      image(batImg2, pos.x, pos.y, 170, 100);
    }
    if ((millis() - lastTime) > 150) {
      lastTime = millis();
      firstFrame = ! firstFrame;
    }
  }
}
