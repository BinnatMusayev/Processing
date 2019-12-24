ArrayList<Square> s;
int r = int(random(255));
int g = int(random(255));
int b = int(random(255));
void setup(){
  size(800, 800);
  
  
  s = new ArrayList<Square>();
  int counter=0;
  for(float sw=10; sw<=200;sw*=1.3){
    for(float i=0; i<=360; i+=30){
      s.add(new Square(sw, i, sw+sw/2, (counter%2==0) ));
      
    }
    System.out.println(counter%2);
    counter++;
  }
  
}

void draw(){
 translate(width/2, height/2);
 background(0); 
 noFill();

 //stroke(255); 
 for(Square sq: s)
   sq.draw();
 
 //stroke(0,255,0);
 //point(0,0);
}
