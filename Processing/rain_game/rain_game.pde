int Y=50;
int yspeed=10;
int score=0;
int randomNumber=(int) random(width);
void setup(){
  size(1000, 800);
}
void draw(){
  background(120, 0, 170);
    fill(0, 0, 255);
  ellipse(randomNumber, Y, 50, 70);
  noStroke();
  Y=Y+ yspeed;
  if(Y>801){
   Y=50; 
   randomNumber=(int) random(width);
  }
  fill(150,150,150);
rect(mouseX, 700, 90, 100);
fill(0,0,0);
textSize(16);
if(randomNumber>mouseX && randomNumber<mouseX+100 && Y==700){
  score=score+1;
     Y=50; 
   randomNumber=(int) random(width);
}
if(Y>800){
  score=score-1;
}
text("Score: "+ score,20,20);
if(score>1000){
text("You win", 500, 400);
textSize(40);
}
}