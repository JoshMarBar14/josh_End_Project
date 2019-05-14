class plataform {
  PVector pos = new PVector(200, 300);
  boolean colide;

  plataform() {
    
  }
  
  plataform(float _x, float _y ) {
    pos = new PVector(_x, _y);
  }






  void draw() {
    rect(pos.x, pos.y, 100, 25);
    pos.y+=1;
    
    
    if(pos.y>height){
    pos.y = 0;
    pos.x = random(0,700);
    }
    
  }
  
  
  
  boolean colision() {
    if (guy.pos.x > pos.x  && 
      guy.pos.x < pos.x + 100  &&
      guy.pos.y < pos.y + 25 && 
      guy.pos.y > pos.y )
    {
      return true;
    } else {
      return false;
    }
  }
}
