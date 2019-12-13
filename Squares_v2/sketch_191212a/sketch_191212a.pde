ArrayList<Squares> ss;
int wdth;
void setup(){
  size(800, 800);
  ss = new ArrayList<Squares>();
  wdth = 70;
  for(int i=wdth/2; i<width; i+=wdth){
    for(int j=wdth/2; j<height; j+=wdth){
      ss.add(new Squares(i, j));
    }
  }
  
  
  
}

void draw(){
  background(0);
  for(Squares s: ss){
    s.draw();
  }
  
  
}
