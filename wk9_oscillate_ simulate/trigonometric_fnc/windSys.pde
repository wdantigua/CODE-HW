class Particle {

  PVector loc;
  PVector vel;
  PVector acc;
  float r;
  float an;
  float aVel;
  float aAcc;
  float rx;
  float ry;
  float life;

  Particle( PVector l, float v)
  {
    loc = l;
    vel = new PVector(v, 0);
    acc = new PVector(0.1, 0);

    r = 100;
    an = 0;
    aVel = 0;
    aAcc = 0.01;

    life= 300;
  }


  void run()
  {

    update();
    display();
    bounce();
  }

  void update()
  {
    loc.add(vel);
    vel.add(acc);

    //rx = r * sin(an);
    ry = r * cos(an);


    an += aVel;
    aVel += aAcc;
    aVel = constrain(aVel, 0, 0.05);
    an = constrain(an, 0, 6);
    
    life-=2.5;
  }
  void display()
  {
    noStroke();
    fill(map(loc.x,0,width,0,200),100,map(loc.x,0,300,200,0), life-50);
    ellipse(loc.x+rx, loc.y+ry, 30, 30);
  }

  void bounce()
  {
    if (loc.x > width || loc.x < -1)
    {
      vel.x *= -1;
    }
  }

  boolean isDead()
  {
    if (life<= 0 )
    {
      return true;
    } else
    {
      return false;
    }
  }
}