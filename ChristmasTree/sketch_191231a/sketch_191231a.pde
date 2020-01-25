ArrayList<PVector> nodes = new ArrayList<PVector>();

float angle = 0;
float deltaAngle = 7;
float distance = 3;

void setup(){
  size(600, 600, P3D);
  
  float y =0;
  for(int i=0; i<2000; i++){
    
    float tempX = width/2+distance * cos(radians(angle));
    float tempY = i*1.5;
    float tempZ = distance * sin(radians(angle));
    
    nodes.add(new PVector(tempX, tempY, tempZ));
    
    distance +=0.5;
    angle += deltaAngle;
    
    
    if(angle > 360){
      angle -= 360;
    }
    
    //System.out.println("coordinates " + tempX + ", "  + tempY + ", "  + tempZ );
    
  }
  
  
  
}

void draw(){
 background(0); 
 
 fill(30,122,7);
 for(PVector v: nodes){
   if(v.z>0){
     fill(27, 181, 35);
     circle(v.x, v.y, 5);
   }else{
     fill(4, 92, 8);
     circle(v.x, v.y, 5);
   }
   
 }
}
