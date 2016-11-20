class Particle 
{

  PVector loc;
  PVector vel;  
  PVector acc;
  float mass;
  int life;
 

  Particle()
    {
      loc = new PVector(0, -40);
      vel = new PVector(random(-1,1), random(-1,1));
      acc = new PVector(0, 0.01);
      life = 500;
      mass = random(1,2);
    }
    //rules of motion: velocity change position, acceleration changes vel
  void update()
  {
      loc.add(vel);
      vel.add(acc);
      acc.mult(0);
      life-= 3;
  }
   void display()
  {
      noStroke();
      fill(255,life);
      for (int i = 0 ; i < 400; i += 50)
      {
        ellipse(loc.x + i,loc.y,mass * 5,mass * 5);
      }
  }
  
  // acceleration equals sum of all the forces 
  void appForce(PVector force)
  {   
      PVector f = PVector.div (force,mass);
      acc.add(f);
  }
  
  boolean isDead()
  {
    if (life<= 0 )
    {
        return true;
    }
    else
    {
      return false;
    }
  }
  
  
}