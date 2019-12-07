public class Slash{
  private float x, y;
  boolean toRight;
  
  public Slash(float x, float y){
    this.x = x;
    this.y = y;
    if(random(10)>5){
      toRight = true;
    }else{
      toRight = false;
    }
  }
  
  public void draw(){
    fill(255);
    if(toRight){
      line(x, y, x+slashLength, y+slashLength);
    }else{
      line(x+slashLength, y, x, y+slashLength);
    }
  }
}
