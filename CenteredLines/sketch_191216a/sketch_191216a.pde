RandomArcs ra;
CenteredLine cl;

void setup() {
  size(600, 600);
  
  ra = new RandomArcs();
  cl = new CenteredLine();
}

void draw() {
  background(255);
  noFill();
  stroke(0);
  strokeWeight(0.3f);
  
  ra.draw();
  cl.draw();
  
}
