class Square{
  
  float swidth;
  float angle;
  float distance;
  
  public Square(float swidth, float angle, float distance, boolean tilted){
    this.swidth = swidth;
    this.angle = angle;
    this.distance = distance;
    if(tilted){
     this.angle+=45; 
    }
    
  }
  
  void draw(){
    //stroke(int(random(255)), int(random(255)), int(random(255)));
    stroke(r,g,b, 255-distance);
   rotate(radians(angle));
   square(distance+cos(radians(angle)),distance+sin(radians(angle)),swidth);
   rotate(radians(-angle));
  }
  
  
}
