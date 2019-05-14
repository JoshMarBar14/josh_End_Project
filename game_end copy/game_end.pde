PImage cave;
int Scene = 0;
PVector gravity = new PVector(0, 0.6);
boolean left, right, up, down = false;
int score;

bat b1;
plataform ground = new plataform();
plataform ground2 = new plataform(100, 500);
plataform ground3 = new plataform(625, 200);
plataform ground4 = new plataform(525, 550);
plataform ground5 = new plataform(425, 650);
player guy = new player();

import ddf.minim.*;



Minim minim;

AudioPlayer player;

void setup() {
  cave = loadImage("cave.png");
  b1 = new bat();
  size(800, 800); 
  minim = new Minim(this);

  player = minim.loadFile("caveMusic.mp3");
  player.play();
}



void draw() {
  if (Scene == 0) {
    score += 1;
    background(cave);
    fill(255, 255, 255);
    text("Points: "+score, 10, 30); 
    fill(75, 73, 73);
    ground.draw();
    ground2.draw();
    ground3.draw();
    ground4.draw();
    ground5.draw();
    fill(255, 255, 255);
    if (ground.colision())
    {
      if (gravity.y > 0) {
        guy.pos.y = ground.pos.y;
      } else {
        guy.pos.y = ground.pos.y +25;
      }  
      guy.onPlataform = true;
    } else if (ground2.colision())
    {
      if (gravity.y > 0) {
        guy.pos.y = ground2.pos.y;
      } else {
        guy.pos.y = ground2.pos.y +25;
      }  
      guy.onPlataform = true;
    } else if (ground3.colision())
    {
      if (gravity.y > 0) {
        guy.pos.y = ground3.pos.y;
      } else {
        guy.pos.y = ground3.pos.y +25;
      }  
      guy.onPlataform = true;
    } else if (ground4.colision())
    {
      if (gravity.y > 0) {
        guy.pos.y = ground4.pos.y;
      } else {
        guy.pos.y = ground4.pos.y +25;
      }  
      guy.onPlataform = true;
    } else if (ground5.colision())
    {
      if (gravity.y > 0) {
        guy.pos.y = ground5.pos.y;
      } else {
        guy.pos.y = ground5.pos.y +25;
      }  
      guy.onPlataform = true;
    } else {
      guy.onPlataform = false;
    }
    b1.draw();
    guy.draw();
  }

  if (Scene == 1) {

    background(0, 0, 0);
    textSize(32);
    fill(200, 0, 0);
    text("Game Over", 300, 400);
    text("press r to reset", 10, 30);
    if (keyPressed) {
      if (key == 'r') {
        guy.pos.x = 400;
        guy.pos.y = 0;
        Scene = 0;
        score = 0;
        guy.dir = new PVector(0, 0); 
        guy.jumpCount = 0;
      }
    }
  }

  if (guy.pos.y > height)
  {
    Scene = 1;
  }


  if (up) {
  }
  if (down) {
    guy.pos.y+=4;
  }
  if (left) {
    guy.pos.x-=4;
  }
  if (right) {
    guy.pos.x+=4;
  }
}

void keyPressed() {


  if (key == 'w') {
    up = true;
  }

  if (key == 'd') {
    right = true;
  }


  if (key == 'a') {
    left = true;
  }
  if (key == 's') {

    down = true;
  }
}
void keyReleased() {
  if (key == 'd') {
    right = false;
  }


  if (key == 'a') {
    left = false;
  }
  if (key == 's') {
    down = false;
  }
  if (key == 'w') {
    up = false;
    if (guy.jumpCount < 3) {
      guy.jump();
    }
  }
}

void mouseReleased() {
  guy.Swapgravity();
}
