public class Node{
  
  public float x, y;
  public float directionAngle;
  public float speed = random(0.1, 0.5);
  public ArrayList<Node> nodes;
  public int limit = 10;
  
  public Node(float x, float y){
    this.x=x;
    this.y=y;
    //directionAngle = random(360);
    directionAngle = 90;
    nodes = new ArrayList<Node>();
  }
  
  private void move(){
    if(x>width) x = 0;
    if(x<0) x = width;
    if(y>height) y=0;
    if(y<0) y = height;
    
    x += speed*sin(radians(directionAngle));
    y += speed*cos(radians(directionAngle));
  }
  
  public void isInRange(Node n){
    if( abs(this.x - n.x) <range && abs(this.y-n.y) <range ){
      if(!isConnectedTo(n)){
        connect(n);
      }
    }else{
      disconnect(n);
    }
  }
  
  public boolean isStillClose(Node n){
    return abs(this.x - n.x) <range && abs(this.y-n.y) <range ;
  }
  
  public boolean isConnectedTo(Node n){
   return nodes.contains(n) || n.nodes.contains(this);
  }
  
  public void connect(Node n){
    if(nodes.size()<limit && n.nodes.size()<limit){
       nodes.add(n);
       n.nodes.add(this);
    }else{
      replaceIfCloser(n);
    }
  }
  
  private void replaceIfCloser(Node n){
    for(Node nn: nodes){
      if(dist(x,y,n.x,n.y) < dist(x,y,nn.x,nn.y)){
        disconnect(nn);
        connect(n);
        break;
      }
    }
  }
  
  public void disconnect(Node n){
   nodes.remove(n);
   n.nodes.remove(this);
  }
  
  private void draw(){
    move();
    circle(x, y, 3);
    for(Node n: nodes){
      if(isStillClose(n))
        line(x, y, n.x, n.y);
    }
  }
  
}
