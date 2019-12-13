public class Slash{
  private float x, y;
  boolean toRight;
  int cr, cg, cb;
  int diff;
  int delayTime;
  int delayCounter;
  
  public Slash(float x, float y){
    this.x = x;
    this.y = y;
    if(random(10)>5){
      toRight = true;
    }else{
      toRight = false;
    }
    
    diff = 60;
    
    delayTime = int(random(200));
    delayCounter = 0;
    
    cr = colorR + int(random(-diff, diff));
    cg = colorG + int(random(-diff, diff));
    cb = colorB + int(random(-diff, diff));
   
  }
  
  public void draw(){
    stroke(cr, cg, cb);
    if(delayCounter>delayTime){
      if(toRight){
        line(x, y, x+slashLength, y+slashLength);
      }else{
        line(x+slashLength, y, x, y+slashLength);
      }
    }else{
      delayCounter++;
    }
  }
}
