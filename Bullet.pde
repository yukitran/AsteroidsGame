class Bullet extends Floater {
  public Bullet(Spaceship ship) {
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getPointDirection();
    accelerate(6.0);
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getX(){
   return myCenterX; 
  }
  public double getY(){
    return myCenterY;
  }
}
