class CenteredLine{
  int l;
  int x = width/2;
  int y = height/2;
  int beginDegree, endDegree;
  
  public CenteredLine(){
    //l = int(random(100, 300));
    l = 20;
    
    beginDegree = int(random(360));
    endDegree = beginDegree + int(random(-90, 90));
    
    //swapping degress in case of need
    if(beginDegree>endDegree){
     int tempDegree = beginDegree;
     beginDegree = endDegree;
     endDegree = tempDegree;
    }
   
    System.out.println("begin: " + beginDegree + " end: " +endDegree);
  }
  
  void draw(){
    //stroke(0.5f, 0, 0, 0);
    //line(width/2, height/2, 100, 200);
    for(int i = beginDegree; i<endDegree; i+=3){
      line(x, y, i+x*sin(l), i+y*cos(l));  
    }
    
  }
  
}
