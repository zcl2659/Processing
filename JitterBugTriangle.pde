//ZOE LAO
//MAY 25, 2017

class JitterBugTriangle{
  float x1;
  float y1;
  float x2 = x1+50;
  float y2 = y1+90;
  float x3 = x1+30;
  float y3 = y1+70;
  float distance;
  float speed = 2.5;
  
  JitterBugTriangle(float tempX, float tempY, float tempDistance){
    x2 = tempX;
    y2 = tempY;
    distance = tempDistance;
  }
  
  void move(){
    x1 += random(-speed, speed);
    y1 += random(-speed, speed);
    x2 += random(-speed, speed);
    y2 += random(-speed, speed);
    x3 += random(-speed, speed);
    y3 += random(-speed, speed);
  }
  
  void display(){
    triangle(x1, y1, x2, y2, x3, y3);
  }
  
  void setColor(){
    fill(#AAD4FF);
  }
  
  void setSize(){
    x1 = 15;
    y1 = 64;
  }
}