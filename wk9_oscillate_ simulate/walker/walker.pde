ArrayList<Walker> walkerList = new ArrayList<Walker>();

void setup() {
  size(1000, 700);
  noStroke();
  background(100);
  
}

void draw() {
  
  for (int i = walkerList.size()-1; i>0; i--) {
    Walker walker = walkerList.get(i);
    walker.move();
    walker.display();
    if (walker.isDead())
    {
      walkerList.remove(i);
    
    }
  }
}

void mousePressed() {
  walkerList.add(new Walker(mouseX, mouseY));
}

class Walker {
  float x, y, xStep, yStep, siz;
  float life;

  Walker(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 2;
    this.xStep = this.siz * 2;
    this.yStep = this.siz * 2;
    this.life = 700;
  }

  void display() {
    fill(map(x,0,800,0,255),map(y,0,700,0,255),map(x,1000,0,255,0));
    for (int i = 0 ; i < 1000 ; i += 10)
    rect(x+i, y+i, siz, siz);
  }

  void move() {
  float r =random(1);
  
  if (r < 0.3)
  {
    x += xStep;
  }
   else if (r < 0.3)
  {
    x -= xStep;
  }
   else if (r < 0.6)
  {
    y+= yStep;
  }
   else if (r < 0.6)
  {
    y -= yStep;
  }
  
  if (y>7000)
  {
    y =0;
    x = random(0,500);
  }
  
  life--;

 
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