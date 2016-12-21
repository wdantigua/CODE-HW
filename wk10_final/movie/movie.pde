import processing.video.*;
ArrayList<Particle> particles;
PVector gravity;
Movie m;

void setup()
{
  m = new Movie(this,"asereje.mov");
  particles = new ArrayList <Particle>();
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
 background(0);
  particles.add(new Particle());

  for ( int i = particles.size()-1; i>0; i--)
  {
    Particle p = particles.get(i);
    p.update();
    p.display();
    if (mousePressed == true)
    {
 
    }

    if (p.isDead())
    {
      particles.remove(i);
    }
  }
}