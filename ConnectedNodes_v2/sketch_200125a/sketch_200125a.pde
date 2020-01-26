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
void setup(){
  size(600, 600);
  
  range = width/7;
  
  //setting initial bg
  currentBg = int(random(bgs[0].length));
  r = bgs[currentBg][0];
  g = bgs[currentBg][1];
  b = bgs[currentBg][2];
  
  
  
  nodes = new ArrayList<Node>();
  for(int i =0; i<125; i++){
     nodes.add(new Node(random(width), random(height))); 
  }
  
}

void draw(){
  background(r, g, b);
  stroke(255);
  fill(255);
  
  changeBg();
  
  
  for(Node n: nodes){
   n.draw(); 
     for(Node nn: nodes){
       if(!n.equals(nn)){
         //if(n.isInRange(nn)){
         //    line(n.x, n.y, nn.x, nn.y);
         //}
         n.isInRange(nn);
       }
     }
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
}
