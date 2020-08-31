class Ball{
  
  PVector pos;
  PVector vel;
  int SCORE = 0;
  boolean bounce = false;
  float d1, d2;
  
  Ball(int x, int y){
    pos = new PVector(x, y);
    vel = new PVector(2, 2);
  }
  
  void show(){
    fill(255, 0, 0);
    noStroke();
    ellipse(pos.x, pos.y, 50, 50);
  }
  
  void update(){
    pos.add(vel);
  }
  
  void borders(){
    
    if(pos.x >= 575 || pos.x <= 25){
      vel.x *= -1;
      SCORE = 0;
    }
    if(pos.y >= 475 || pos.y <= 25){
      vel.y *= -1;
    }
    
    
    
  }
  
  void bounce(Player p1, Player p2){
   
    d1 = dist(pos.x, pos.y, p1.pos.x + 15, p1.pos.y + 25);
    d2 = dist(pos.x, pos.y, p2.pos.x, p2.pos.y + 25);
    
    if(d1 <= 50 || d2 <= 50){
      bounce = true;
      if(bounce){
        vel.x *= -1;
        SCORE++;
        bounce = false;
      }
      
    }
    
  }
  
  
  
}
