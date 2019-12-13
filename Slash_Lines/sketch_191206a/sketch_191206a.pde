int slashLength = 20;
ArrayList<Slash> slashes;
int colorR, colorG, colorB;
void setup(){
  size(700, 500);
  
  slashes = new ArrayList<Slash>();
  colorR=int(random(255));
  colorG=int(random(255));
  colorB=int(random(255));
  
  for(int i=0; i<width; i+=slashLength){
    for(int j=0; j<height; j+=slashLength){
      slashes.add(new Slash(i, j));
    }
  }
}

void draw(){
  background(0);
 
  for(Slash s: slashes){
    s.draw();
  }
}
