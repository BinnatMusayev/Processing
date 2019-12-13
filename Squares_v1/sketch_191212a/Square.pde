class Square{
 
  boolean up, down, right, left;
  int l, x, y, w;
  
  public Square(int x, int y, int l){
    this.x = x;
    this.y = y;
    this.l = l;
    w= int(random(3));
    up =  random(10)<7;
    down =  random(10)<7;
    right =  random(10)<7;
    left =  random(10)<7;
    //System.out.println("x: " +x + " y: " +y  +" l: "+l);
  }
  
  void draw(){
    stroke(255);
    strokeWeight(w);
    if(up) line(x, y, x+ l, y);
    if(down) line(x, y+l, x+ l, y+l);
    if(right) line(x+l, y, x+ l, y+l);
    if(left) line(x, y, x, y+l);
  }
  
  
}
