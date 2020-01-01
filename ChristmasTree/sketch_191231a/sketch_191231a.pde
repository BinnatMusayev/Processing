ArrayList<PVector> nodes = new ArrayList<PVector>();

float azimuth = 0;
float altitude = 0;
float deltaAngle = 10;
float distance = 5;

void setup(){
  size(600, 600, P3D);
  
  for(int i=0; i<2000; i++){
    
    float tempX = width/2+distance * sin(radians(azimuth)) * cos(radians(altitude));
    float tempY = distance * sin(radians(altitude));
    float tempZ = distance * cos(radians(azimuth)) * cos(radians(altitude));
    
    nodes.add(new PVector(tempX, tempY, tempZ));
    
    distance +=0.1;
    //azimuth += deltaAngle;
    //altitude += deltaAngle;
    
    if(azimuth > 360){
      azimuth -= 360;
    }
    
    
    if(altitude > 360){
      altitude -= 360;
    }
    
    System.out.println("coordinates " + tempX + ", "  + tempY + ", "  + tempZ );
    
  }
  
}

void draw(){
 background(0); 
 fill(255);
 
 //float zCounter
 for(PVector v: nodes){
   translate(0, 0, v.z%5);
   circle(v.x, v.y, 5);
   //translate(0, 0, 0);
 }
}
