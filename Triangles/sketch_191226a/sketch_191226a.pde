float gap;
ArrayList<Triangle> ts;
int r,g,b;
void setup(){
  size(700, 700);
  gap = width/7;
  
  r = int(random(255));
  g = int(random(255));
  b = int(random(255));
  
  ts = new ArrayList<Triangle>();
  
  int counter = 0;
  for(float j=-height/2; j<=height; j+=gap){
    counter = 0;
    for(float i=0; i<=width; i+=gap){
    
        ts.add(new Triangle(i, j+counter*gap/2, true));
        ts.add(new Triangle(i, j+counter*gap/2, false));
  
      counter++;
    }
    
  }
}

void draw(){
  
  for(Triangle t: ts){
    t.draw();
  }
  
}
