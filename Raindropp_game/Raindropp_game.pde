ArrayList<Raindrop> drops = new ArrayList<Raindrop>();
Catcher c; 
Startscreen q;
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
int index = 1;
PImage mario; 
PImage background;


int score;

void setup() {
  background =loadImage("background.jpg");
  size(background.width, background.height);
  background(background);
  imageMode(CENTER);
  colorMode(HSB, 360, 100, 100, 200);
  //loads catcher 
  c= new Catcher();
  // adds raindrops 
  drops.add(new Raindrop());
  mario = loadImage("mario.png");

  strokeWeight(3);
  textSize(25);
}




void draw() {
  if (Startscreen==true) {
    q.display;
  
  if (Startscreen == false) {

    background(background);
    imageMode(CENTER);
  }
  }
    if (frameCount%3 ==0) {
      drops.add(new Raindrop());
    }
    //displays catcher 
    c.display();
    //moves catcher 
    c.move();

    for (int i = drops.size()-1; i >=0; i--) {
      //displays catcher 
      Raindrop b = drops.get(i);

      b.move();
      b.display();

      // moves raindrops off screen if touching catcher
      if (b.loc.y+22 > c.loc.y && b.loc.y-22 < c.loc.y && 
        b.loc.x +29 >c.loc.x && b.loc.x -29 <c.loc.x) {
        b.loc.x = width*10;
        b.loc.y= height*10;

        //adds score value
        score+=1;
      }
      fill(0);
      //scoreboard
      text(score, 50, 50);
  
 if (keyPressed) {
    if (key == CODED) {
      if (keyCode == ENTER) {
        startscreen = false;
      }
    }
 }

  }
  }

