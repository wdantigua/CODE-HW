
ArrayList<Particle> particles;
PVector gravity;
PVector wind;
float perlin;

void setup()
{

  particles = new ArrayList <Particle>();
  size(400, 300);
}

void draw()
{
  background(0);
  particles.add(new Particle());
  perlin+= 0.0002;

  for ( int i = particles.size()-1; i>0; i--)
  {
    Particle p = particles.get(i);
    p.update();
    p.display();
    
    gravity = new PVector(0, 0.02);
    p.appForce(gravity);
    if (mousePressed == true)
    {
    wind = new PVector(0.05, 0);
    p.appForce(wind);
    }

    if (p.isDead())
    {
      particles.remove(i);
    }
  }
}