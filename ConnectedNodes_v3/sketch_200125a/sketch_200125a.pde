float range;
ArrayList<Node> nodes;
//backgrounds
int[][] bgs = {
    {42, 102, 199},
    {15, 87, 34},
    {117, 44, 18},
    {179, 142, 11},
    {8, 105, 138}
  };

int r,g,b;
int currentBg;
float mouseRange = 100;
int numOfNodes = 750;
Node mouseNode;
void setup(){
  size(850, 650);
  
  range = width/7;
  
  //setting initial bg
  currentBg = int(random(bgs[0].length));
  r = bgs[currentBg][0];
  g = bgs[currentBg][1];
  b = bgs[currentBg][2];
  
  
  
  nodes = new ArrayList<Node>();
  for(int i =0; i<numOfNodes; i++){
     nodes.add(new Node(random(width), random(height))); 
  }
  mouseNode = new Node(mouseX, mouseY);
  mouseNode.directionAngle=0;
  mouseNode.speed=0;
  nodes.add(mouseNode);
  
}

void draw(){
  background(r, g, b);
  stroke(255);
  strokeWeight(2);
  fill(255);
  
  changeBg();
  
  mouseNode.x = mouseX;
  mouseNode.y = mouseY;
  for(Node n: nodes){
   n.draw(); 
     for(Node nn: nodes){
       if(!n.equals(nn)){
         //if(n.isInRange(nn)){
         //    line(n.x, n.y, nn.x, nn.y);
         //}
         //n.isInRange(nn);
         
         //mouse movement
         if(abs(mouseX - n.x) <mouseRange && abs(mouseY-n.y) <mouseRange
             && abs(mouseX - nn.x) <mouseRange && abs(mouseY-nn.y) <mouseRange ){
               n.connect(nn);
             }else{
               n.disconnect(nn);
             }
       }
     }
     
     //if(!n.equals(mouseNode)){
     //  if(abs(mouseX - n.x) <mouseRange && abs(mouseY-n.y) <mouseRange){
     //    //n.connect(mouseNode);
     //  }else{
     //    n.disconnect(mouseNode);
     //  }
     //}
  }
}

void changeBg(){
  int newR = bgs[currentBg][0];
  int newG = bgs[currentBg][1];
  int newB = bgs[currentBg][2];
  
  if (r<newR){ r++; }else if(r>newR){r--;}
  if (g<newG){ g++; }else if(g>newG){g--;}
  if (b<newB){ b++; }else if(b>newB){b--;}
  
  if(r == newR && g == newG && b == newB){
    currentBg = int(random(bgs[0].length));
  }
  
  //circle(mouseX, mouseY, 120);
}
