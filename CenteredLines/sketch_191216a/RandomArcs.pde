class RandomArcs{
  private float radius;
  
  public RandomArcs(){
    radius = random(200, 400);
  }
  
  void draw(){
    arc(width/2, height/2, radius, radius, 30, 100);
  }
  
  
  
}
