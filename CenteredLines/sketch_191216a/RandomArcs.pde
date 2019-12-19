class RandomArcs{
  private float radius;
  ArrayList<CenteredLine> cl;
  
  public RandomArcs(float radius){
    this.radius = radius;// = random(100, 300);
    cl = new ArrayList<CenteredLine>();
    
    for(int i=0; i<int(random(4,35)); i++){
      cl.add(new CenteredLine(int(radius)));
    }
  }
  
  void draw(){
    //arc(width/2, height/2, radius, radius, 30, 100);
    for(CenteredLine l: cl){
     l.draw(); 
    }
  }
  
  
  
}
