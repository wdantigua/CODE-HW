import processing.video.*;
float x, y;

Movie m;

void setup()
{
  m = new Movie(this,"asereje.mov");
  size(displayWidth,displayHeight);
  m.loop();
background(0);
}

void movieEvent(Movie m)
{
 m.read();
}
void draw()
{   
  
 
 
  for (int i=0 ; i < displayWidth ; i+=1)
  {
     x = random(0,displayWidth);
  y = random(0,displayHeight);
  color c = m.get(int(x), int(y));
  noStroke();
  fill(c,95);
  ellipse(x,y,20,20);
 // x+=10;
  }
  
}