//Zoe Lao
//April 24, 2017

PFont font;

void setup(){
  size(215, 120);  
}

void draw(){
  background(102);
  fill(255);
  font = loadFont("Parchment-Regular-60.vlw");
  textFont(font);
  text("Zoe", 26, 50, 240, 100);
  fill(0);
  font = loadFont("ComicSansMS-48.vlw");
  textFont(font);
  text("Lao", 110, 42, 240, 100);
}