
ArrayList <Particle> particle;

void setup()
{
  particle = new ArrayList<Particle>();
  size(500, 500);
}

void draw()
{
  particle.add( new Particle(new PVector(0, random(-100, 600)), random(0, 0.1)));
  background(220);

  for (int i = particle.size()-1; i > 0; i--)
  {
    Particle p = particle.get(i);
    p.run();
    
      if (p.isDead())
    {
      particle.remove(i);
    }
  }
  println(particle.size());
  
}