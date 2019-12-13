class Squares{
  
  ArrayList<Square> ss;
  int count;
  int x, y, l;
  
  public Squares(int x, int y, int l){
    this.x = x;
    this.y = y;
    this.l = l;
    
    ss = new ArrayList<Square>();
    //count = int(random(5));
    count = 5;
    
    for(int i=0; i<count; i++){
      int tempX = int(random(x, x+l/2));
      int tempY = int(random(y, y+l/2));
      int tempL = int(random(wdth/2));
      System.out.println(tempL);
      ss.add(new Square(tempX, tempY, tempL));
    }
    
  }
  
  void draw(){
   for(Square s: ss){
    s.draw(); 
   }
  }
  
}
