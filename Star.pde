class Star //note that this class does NOT extend Floater
{
  private int starX, starY;
  private int myR, myG, myB;
  public Star() {
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
    myR = (int)(Math.random()*255);
    myG = (int)(Math.random()*255);
    myB = (int)(Math.random()*255);
  }
  public void show() {
    fill(myR, myG, myB);
    noStroke();
    ellipse(starX, starY, 3, 3);
  }
}
