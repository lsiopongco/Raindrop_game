class Startscreen{
  
PVector loc; 
PImage intro;
int d= width;
int p = height; 



Startscreen(){
loc=new PVector(width,height);
intro=loadImage("intro.png"); 
}

void display(){
  imageMode(CENTER);
  image(intro, loc.x,loc.y,d,p);
}

}
