ArrayList<Raindrop> drops = new ArrayList<Raindrop>();
Catcher c; 
int Startscreen;
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
int index = 1;
PImage mario; 
PImage background;
int score;

void setup() {
  Startscreen=0;
  
//loads the background for the game 
  background =loadImage("background.jpg");
  size(background.width, background.height);

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

  background(background);
  imageMode(CENTER);
  // Startscreen 
  if (Startscreen==0) {
    textSize(40);
    text("Mario World", 250, 100);
    textSize(20);
    text("Press Space to Start!", 250, 200);

    if (frameCount%100 ==0) {
      drops.add(new Raindrop());
    }
  }
  //changes value so you can play
  if (keyPressed && key == ' ')
  {
    Startscreen =1;
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
      b.loc.x +29 >c.loc.x && b.loc.x -29 <c.loc.x ) {
      b.loc.x = width*10;
      b.loc.y= height*10;

      //adds score value
      score++;
    }
    fill(0);
    //scoreboard
    text(score, 50, 50);
  }
}
//check for score
void gamewincheck()
{
  if (score == 10)
  {
    //GAME OVER MODE
    background(255, 0, 0);
    fill(0);
    textSize(100);
    text("You Win!", width/2, height/2);
  }
}
