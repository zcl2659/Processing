boolean gameReset = false;

int playerX = 0;
float ballY;
float ballX;
int ballRadius = 10;
float speed = 5;
int direction = 1;

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
  int timer = second();
  textSize(48);
  text(timer, 475, 350);
  
//PLAYER PADDLE
  rect(playerX, mouseY, 20, 80);   
  
//PLAYER 2 PADDLE
  rect(980, 0, 20, 700);        
  
//BALL
  if ((ballX == 30) && (ballY > mouseY) && (ballX < mouseY + 80)){
    direction = 1; 
  } else if ((ballX == 970) || (ballY > 700) || (ballY < 0)){
    direction = -direction;
  }
   ellipse(ballX, ballY, 20, 20);
   
//Random Direction
  ballX += speed * direction;
  ballY += speed * direction;
  
//Game Reset
   if((ballX > width) || (ballX < 0)){
     gameReset = false;
     ballX = width/2;
     ballY = height/2;
   }
}