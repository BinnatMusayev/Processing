class Square{
 
  boolean up, down, right, left;
  int l, x, y, w;
  int r,g,b;
  public Square(int x, int y, int l){
    this.x = x;
    this.y = y;

    this.l = l/2;    w= int(random(3));
    up =  random(10)<7;
    down =  random(10)<7;
    right =  random(10)<7;
    left =  random(10)<7;
    
    r=int(random(255));
    g=int(random(255));
    b=int(random(255));
  }
  
  void draw(){
    stroke(r,g,b);
    //stroke(255);
    strokeWeight(w);
    if(up) line(x-l, y-l, x+ l, y-l);
    if(down) line(x-l, y+l, x+ l, y+l);
    if(right) line(x+l, y-l, x+ l, y+l);
    if(left) line(x-l, y-l, x-l, y+l);
  }
  
  
}
