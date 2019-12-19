class CenteredLine{
  int l;
  int x = width/2;
  int y = height/2;
  float beginDegree, endDegree;
  int r;
  float changeRate;
  
  
  public CenteredLine(int radius){
    //l = int(random(100, 300));
    l = 300;
    r = radius;
    
    beginDegree = random(360);
    endDegree = beginDegree + random(-40, 40);
    
    //swapping degress in case of need
    if(beginDegree>endDegree){
     float tempDegree = beginDegree;
     beginDegree = endDegree;
     endDegree = tempDegree;
    }
    
    if(random(10)>5){
      changeRate = random(2, 4);
    }else{
     changeRate = random(-4, 2); 
    }
    c = color(int(random(255)), int(random(255)), int(random(255)));
   
    System.out.println("begin: " + beginDegree + " end: " +endDegree);
  }
  
  void draw(){
    stroke(c);
    for(float i = beginDegree; i<endDegree; i++){
      line(x+r/2*cos(radians(i)), y+r/2*sin(radians(i)), x+l*cos(radians(i)), y+l*sin(radians(i)));  
    }
    beginDegree+=changeRate;
    endDegree+=changeRate;
  }
  
}
