ArrayList<Squares> ss;
int wdth;
void setup(){
  size(900, 900);
  ss = new ArrayList<Squares>();
  wdth = 100;
  for(int i=0; i<900; i+=wdth){
    for(int j=0; j<900; j+=wdth){
      ss.add(new Squares(i, j, wdth));
    }
  }
  
}

void draw(){
  background(0);
  for(Squares s: ss){
    s.draw();
  }
  
}
