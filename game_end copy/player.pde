class player {
  PVector pos = new PVector(200, 300);
  PVector dir = new PVector(0, 0); 
  boolean onPlataform = false;
  int jumpCount;
  player() {
  }

  void draw() {
    if (onPlataform == false) {
      dir.add(gravity );
      pos.add(dir);
    }

    if (onPlataform == true) {
      jumpCount = 0;
      dir = new PVector(0, 0);
    }
fill(255,255,255);


    ellipse(pos.x, pos.y, 20, 20);
  }

  void jump() {
    jumpCount ++;
    dir = new PVector(0, -12);
    onPlataform = false;
  }
  void Swapgravity() {


    gravity.y*=-1;
    dir = new PVector(0, 0, 0);
  }
}
