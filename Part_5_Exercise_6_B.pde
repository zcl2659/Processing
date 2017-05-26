//ZOE LAO
//MAY 25, 2017

JitterBug jit;
JitterBug bug;
JitterBugTriangle beetle;
void setup() {
 size(480, 120);
 smooth();
 jit = new JitterBug(width * 0.33, height/2, 50);
 bug = new JitterBug(width * 0.66, height/2, 10);
 beetle = new JitterBugTriangle(width * 0.4, height/2, 60);
}
void draw() {
 jit.move();
 jit.display();
 bug.move();
 bug.display();
 beetle.move();
 beetle.display();
 beetle.setColor();
 beetle.setSize();
} 