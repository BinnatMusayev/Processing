float gap;
void setup(){
  size(600, 600);
  
  gap = width/5;
}

void draw(){
  background(0);
  stroke(255);
  
  for(float i=0; i<=width; i+=gap){
   line(i,0,i,height); 
  }
  
  for(float i=-height; i<=height; i+=gap){
    line(0, i, 2*height*cos(radians(45)), i+2*height*sin(radians(45)));
  }
}
