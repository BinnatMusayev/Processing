ArrayList<RandomArcs> ra;
color c;
void setup() {
  size(600, 600);
  
  ra = new ArrayList<RandomArcs>();
  for(float i = width; i>150; i-=60){
   ra.add(new RandomArcs(i)); 
  }
  
}

void draw() {
  background(0);
  //noFill();
  //stroke(255);
  strokeWeight(0.4f);
  
  for(RandomArcs a: ra){
   a.draw(); 
  }
  
  
}
