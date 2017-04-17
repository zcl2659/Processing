void setup(){
  size(300, 400);
  smooth();
}

int x = 0;
int y = 0;

void draw(){
  if(keyPressed && (key == ' ')){
    background(random(255), random(255), random(255));
  } else {
    background(204);
  }
  if(keyPressed && (key == CODED)){
    if(keyCode == LEFT){
      x--;
    } else if(keyCode == RIGHT){
      x++;
    }
    if(keyCode == UP){
      y--;
    } else if(keyCode == DOWN){
      y++;
    }
  }
//Head
if(keyPressed && (key == ' ')){
  fill(153, 255, 153);
}else{
  fill(126, 8, 8);
}
ellipse(x+150, y+140, 80, 80);

//Body
if(keyPressed && (key == ' ')){
  fill(255, 255, 153);  
}else{
  fill(134, 116, 168);
}
beginShape();
vertex(x+80, y+180);
vertex(x+220, y+180);
vertex(x+270, y+240);
vertex(x+260, y+260);
vertex(x+250, y+240);
vertex(x+200, y+240);
vertex(x+190, y+260);
vertex(x+180, y+240);
vertex(x+120, y+240);
vertex(x+110, y+260);
vertex(x+100, y+240);
vertex(x+50, y+240);
vertex(x+40, y+260);
vertex(x+30, y+240);
vertex(x+80, y+180);
endShape();

//Eyes
if(keyPressed && (key == ' ')){
  fill(255);
}else{
  fill(0);
}
rect(x+120, y+130, 20, 5);
rect(x+160, y+130, 20, 5);

if(keyPressed && (key == ' ')){
  fill(0);
}else{
  fill(255);
}

//Eye Pupils Thing

int leftEyeX = 130;
int leftEyeY = 133;
int leftEyeMax = 137;
int leftEyeMin = 123;
int rightEyeX = 170;
int rightEyeY = 133;
int rightEyeMax = 177;
int rightEyeMin = 163;

if(mouseX > leftEyeMax){
  leftEyeX = leftEyeMax;
}else if(mouseX < leftEyeMin){
  leftEyeX = leftEyeMin;
}else{
  leftEyeX = mouseX;
}
ellipse(x+leftEyeX, y+leftEyeY, 5, 5);

if(mouseX > rightEyeMax){
  rightEyeX = rightEyeMax;
}else if(mouseX < rightEyeMin){
  rightEyeX = rightEyeMin;
}else{
  rightEyeX = mouseX;
}
ellipse(x+rightEyeX, y+rightEyeY, 5, 5);

//Nose
strokeWeight(5);
point(x+150, y+140);
strokeWeight(1);

//Mouth
line(x+135, y+160, x+165, y+160);

//Horns
if(keyPressed && (key == ' ')){
  fill(255, 153, 51);
}else{
  fill(158, 199, 204);
}
beginShape();
vertex(x+110, y+130);
vertex(x+70, y+110);
vertex(x+60, y+80);
vertex(x+100, y+50);
vertex(x+120, y+70);
vertex(x+105, y+65);
vertex(x+90, y+90);
vertex(x+130, y+105);
vertex(x+100, y+110);
vertex(x+110, y+130);
endShape();

beginShape();
vertex(x+170, y+105);
vertex(x+210, y+90);
vertex(x+195, y+65);
vertex(x+180, y+70);
vertex(x+200, y+50);
vertex(x+240, y+80);
vertex(x+230, y+110);
vertex(x+190, y+130);
vertex(x+200, y+110);
vertex(x+170, y+105);
endShape();
}