boolean gameReset = false;

int playerX = 0;
float ballY;
float ballX;
int ballRadius = 10;
float speed = 5;
int directionX = 1;
int directionY = 1;
int scoreP1 = 0;
int scoreP2 = 0;

PFont font;

void setup(){
  size(1000, 700);
  smooth();
  font = loadFont("Jokerman-Regular-48.vlw");
  textFont(font);
}

void draw(){
  background(0);
  strokeWeight(0);
  
//TIMER
  int timerS = millis();
  textSize(48);
  text(timerS/1000, 475, 350);
  
//PLAYER PADDLE
  rect(playerX, mouseY, 20, 80);   
  
//PLAYER 2 PADDLE
  rect(980, 0, 20, 700);        
  
//BALL
  if ((ballX == 30) && (ballY > mouseY) && (ballY < mouseY + 80)){
    directionX = 1; 
    directionY = 1;
  } else if (ballX == 970){
    directionX = -directionX;
  }else if((ballY > height)||(ballY < 0)){
    directionY = -directionY;
  }
  
  if((ballX == 30) || (ballX == 970)){
    fill (random(255, 255), random(255, 255), random(255, 255));
  }
//COOL FACTOR
  if(ballX < 80){
    fill(random(255), random(255), random(255));
  }else if(ballX > 920){
    fill(random(255), random(255), random(255));
  }else{
    fill(255);
  }
   ellipse(ballX, ballY, 20, 20);
   ballX += speed * directionX;
   ballY += speed * directionY;
     
//GAME RESET
   if((ballX > width) || (ballX < 0)){
     gameReset = false;
     ballX = width/2;
     ballY = height/2;
   }
   
//SCORE
   if(ballX < 1){
     scoreP2 += 1;
   }else if(ballX > width){
     scoreP1 += 1;
   }
   textSize(48);
   text(scoreP2, 750, 150);
   text(scoreP1, 250, 150);
   
}