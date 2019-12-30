class Triangle{
 
  float x, y, x2, y2, x3, y3, centerX, centerY;
  boolean toRight;
  float angle = 60;
  float tgap = gap;
  
  int c1,c2,c3;
  
  float cx, cy;
  float centerRadius;
  float centerAngle = 0;
  float deltaAngle = 10;
  
  public Triangle(float x, float y, boolean toRight){
   this.x = x;
   this.y = y;
   this.toRight = toRight;
   
   if(toRight){
     x2= x;
     y2 = y+tgap;
     x3 = x+2*tgap*cos(radians(angle));
     y3 = y+tgap*cos(radians(angle));
     
     centerX = x3-tgap/1.5;
     centerY = y3;
   }else{
     x2 = x+2*tgap*cos(radians(angle));
     y2 = y+tgap*cos(radians(angle));
     x3 = x+2*tgap*cos(radians(angle));
     y3 = y-tgap*cos(radians(angle));
     
     centerX = x+tgap/1.5;
     centerY = y;
   }
   
   int delta = 40;
   c1 = int(random(-delta,delta));
   c2 = int(random(-delta,delta));
   c3 = int(random(-delta,delta));
   
   //for moving center point
   centerRadius = tgap/6;
  }
  
  
  
  void draw(){
     
     fill(r+c1,g+c1,b+c1);
     triangle(x, y, cx, cy, x2, y2);
     fill(r+c2,g+c2,b+c2);
     triangle(x, y, cx, cy, x3, y3);
     fill(r+c3,g+c3,b+c3);
     triangle(x2, y2, cx, cy, x3, y3);
     
     moveCenter();
  }
  
  void moveCenter(){
    //if(centerAngle>360){
    // centerAngle = angle-360; 
    //}
    
    cx = centerX + centerRadius*cos(radians(centerAngle));
    cy = centerY + centerRadius*sin(radians(centerAngle));
    centerAngle += deltaAngle;
  }
  
  
  
}
