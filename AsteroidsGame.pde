ArrayList <Asteroids> sue = new ArrayList <Asteroids>();
ArrayList <Bullet> joe = new ArrayList <Bullet>();
Star[] dots = new Star[300];
Spaceship bob = new Spaceship();

public void setup() {
  size(500, 500);
  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
    sue.add(new Asteroids());
  }
}
public void draw() {
  background(0);
  for (int i = 0; i < dots.length; i++) {
    dots[i].show();
  }
  for (int i = 0; i < sue.size(); i++) {
    sue.get(i).show();
    sue.get(i).move();
    float d = dist((float)bob.getX(), (float) bob.getY(), (float)sue.get(i).getX(), (float)sue.get(i).getY());
    if (d < 10) {
      sue.remove(i);
    }
  }
  for (int i = 0; i < joe.size(); i++) {
    joe.get(i).show();
    joe.get(i).move();
    for (int b = 0; b < sue.size(); b++) {
      float s = dist((float)joe.get(i).getX(), (float)joe.get(i).getY(), (float)sue.get(b).getX(), (float)sue.get(b).getY());
      if (s < 10) {
        sue.remove(b);
        joe.remove(i);
        break;
      }
    }
  }
  bob.show();
  bob.move();
  if (right == true) {
    bob.turn(-7);
  }
  if (left == true) {
    bob.turn(7);
  }
  if (accel == true) {
    bob.accelerate(0.1);
  }
  if (shoot == true) {
    joe.add(new Bullet(bob));
  }
}

public void keyPressed() {
  if (key == 'i') {
    left = true;
  }
  if (key == 'l') {
    right = true;
  }
  if (key == 'j') {
    accel = true;
  }
  if (key == 'h') {
    bob.hyperspace();
  }
  if (key == 'k') {
    shoot = true;
  }
}
boolean left, right, accel, shoot = false;
public void keyReleased() {
  if ( key == 'i') {
    left = false;
  }
  if (key == 'l') {
    right = false;
  }
  if (key == 'j') {
    accel = false;
  }
  if (key == 'k') {
    shoot = false;
  }
}
