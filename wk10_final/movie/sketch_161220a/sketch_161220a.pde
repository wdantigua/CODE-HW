import processing.video.*;
int x, y;

Movie m;

void setup()
{
  m = new Movie(this,"asereje.mov");
  size(displayWidth,displayHeight);
  m.loop();
 
}

void movieEvent(Movie m)
{
 m.read();
}
void draw()
{  
  image(m,0,0);
  for (int i=0 ; i < displayWidth ; i+=10)
  {
  color c = m.get(x+i,y);
  fill(c);
  rect(x+i,0,10,displayWidth);
 // x+=10;
  }
}