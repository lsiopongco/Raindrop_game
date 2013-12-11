class Catcher {
  PVector loc;
  float d;
  int moveSpeed;
  PVector move;

  Catcher() {
    loc = new PVector(width/2, height-20);
    d = 20;
    moveSpeed = 3;
    move = new PVector();
  }

  void display() {
    fill(0);
    stroke(0, 0, 100);
    image(mario, loc.x, loc.y, d, d);
  }

  void move() {
    //sets the catcher controls and coordinates
    loc.x = constrain(loc.x, 0, width);
    loc.y = constrain(loc.y, 0, height);
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          loc.x -= moveSpeed;
        }
        if (keyCode == UP) {
          loc.y -= moveSpeed;
        } 
        if (keyCode == RIGHT) {
          loc.x += moveSpeed;
        }
        if (keyCode == DOWN) {
          loc.y += moveSpeed;
        }
      }
    }
  }
}



