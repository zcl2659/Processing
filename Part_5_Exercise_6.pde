//ZOE LAO
//MAY 25, 2017

JitterBug jit;
JitterBug bug;
void setup() {
 size(480, 120);
 smooth();
 jit = new JitterBug(width * 0.33, height/2, 50);
 bug = new JitterBug(width * 0.66, height/2, 10);
}
void draw() {
 jit.move();
 jit.display();
 bug.move();
 bug.display();
} 