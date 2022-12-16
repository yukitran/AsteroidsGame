class Asteroids extends Floater {
  private double speed;
  public Asteroids() {
    corners = 6;
    xCorners = new int[]{-11, 8, 10, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = 100;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = (Math.random()*5)-3;
    myYspeed = (Math.random()*5)-3;
    myPointDirection = (int)(Math.random()*300);
    speed = (Math.random()*10)-5;
  }
  public void move() {
    turn(speed);
    super.move();
  }
   public double getY(){
   return myCenterY; 
    }
  public double getX(){
    return myCenterX;
  }
}
