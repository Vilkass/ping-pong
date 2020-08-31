Player player1 = new Player(-1,200);
Player player2 = new Player(585,200);
Ball ball = new Ball(275, 50);



void setup(){
  size(600,500);
  textSize(50);
}
void draw(){
  background(0);
  fill(0,100,100);
  text("SCORE: ", 160, 50);
  text(ball.SCORE, 370, 50);
  
  player1.show();
  player1.update();
  
  player2.show();
  player2.update();
  
  ball.show();
  ball.update();
  ball.borders();
  ball.bounce(player1, player2);
  
  
}

void keyPressed(){
  
  if(key == 'w'||key == 'W'){
    player1.move(-2);
  }else if(keyCode == UP){
    player2.move(-2);
  }
  if(key == 's'||key == 'S'){
    player1.move(2);
  }else if(keyCode == DOWN){
    player2.move(2);
  }
  
}
