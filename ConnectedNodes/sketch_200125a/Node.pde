public class Node{
  
  public float x, y;
  public float directionAngle;
  public float speed = globalSpeed;
  
  public Node(float x, float y){
    this.x=x;
    this.y=y;
    directionAngle = random(360);
  }
  
  private void move(){
    if(x>width) x = 0;
    if(x<0) x = width;
    if(y>height) y=0;
    if(y<0) y = height;
    
    x += speed*sin(radians(directionAngle));
    y += speed*cos(radians(directionAngle));
  }
  
  public boolean isInRange(Node n){
    return abs(this.x - n.x) <range && abs(this.y-n.y) <range ;    
  }
  
  private void draw(){
    move();
    circle(x, y, 7);
  }
  
}
