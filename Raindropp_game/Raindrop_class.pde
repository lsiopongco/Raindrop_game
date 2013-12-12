class Raindrop {
  PVector loc, vel, acc;
  int d;
  float hue=random(360);

  Raindrop() {
    d = 10;
    loc = new PVector(random(width), -d); 
    vel = new PVector(0, 1);
    acc = new PVector(0, .01);
  }

  void display() {
    colorMode(HSB,300,100,100,100);
    fill(hue,100,100,50);
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

