class Squares{
  
  ArrayList<Square> ss;
  int count;
  int x, y;
  
  public Squares(int x, int y){
    this.x = x;
    this.y = y;
    
    ss = new ArrayList<Square>();
    //count = int(random(5));
    count = 7;
    
    for(int i=0; i<count; i++){
      int tempL= int(random(wdth));
      ss.add(new Square(x, y, tempL));
    }
    
  }
  
  void draw(){
   for(Square s: ss){
    s.draw(); 
   }
  }
  
}
