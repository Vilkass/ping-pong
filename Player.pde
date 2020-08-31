class Player{
  
  PVector pos;
  int speed = 0;
  
  
  Player(int x, int y){
    pos = new PVector(x, y);
  }
  
  
  void show(){
    fill(255);
    rect(pos.x, pos.y, 15, 50);
  }
  
  void update(){
    pos.y += speed;
    if(pos.y >= 450){
      pos.y = 450;
    }else if(pos.y <= 0){
      pos.y = 0;
    }
    
  }
  
  void move(int i){
     speed = i;
  }
  
  
  
}
