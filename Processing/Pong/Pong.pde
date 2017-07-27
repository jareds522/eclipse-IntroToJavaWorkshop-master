
int X=500;
int xspeed=10;
int Y=50;
int yspeed=10;
int score=0;
void setup(){
  size(1000, 800);
}
void draw(){
  if(Y<800){
  background(255, 0, 0);
  ellipse(X, Y, 50, 50);
  fill(255, 255, 255);
  noStroke();
  rect(mouseX, 750, 100, 10);
  textSize(20);
  text(score, 50, 50);
  X=X-xspeed;
  Y=Y-yspeed;
  println(X);
  if(X>1000){
    xspeed= xspeed*-1;
  }
  if(X<0){
    xspeed= xspeed*-1;
  }
if(Y<0){
  yspeed= yspeed*-1;
}
if(intersects(X, Y, mouseX, 750, 100)){
  yspeed= -yspeed;
  score= score+1;
}
  }
  else{
    background(0, 0, 0);
    textSize(40);
    text("Game Over", 380, 420);
  }
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}