int NUMBALLS = 100;
float a=0;
float[] ballX = new float[NUMBALLS];
float[] ballY = new float[NUMBALLS];
float[] dx = new float[NUMBALLS];
float[] dy = new float[NUMBALLS];

void setup() {
  size(800,800);
  
  noStroke();
  textAlign(CENTER, CENTER);
  
  for (int i = 0; i < NUMBALLS; i++) {
    ballX[i] = width/2;
    ballY[i] = height/2;
    dx[i] = random(-5,5);
    dy[i] = random(-5,5);
    
    //ballX[i] = 0;
    //ballY[i] = map(i,0,NUMBALLS,0,height);
    //dx[i] = map(i,0,NUMBALLS,0,5);
    //dy[i] = 0;
  }
}

void draw() {
  background(50);
  
  for (int i = 0; i < NUMBALLS; i++) {
    fill(map(i,0,NUMBALLS,50,255),200,map(i,0,NUMBALLS,50,100),random(0,100));
    ellipse(ballX[i], ballY[i], i+a, i+a);
    //fill(0);
    //text(i, ballX[i], ballY[i]);
    ballX[i] += dx[i];
    ballY[i] += dy[i];
    
    if (ballX[i] > width || ballX[i] < 0) {
      ballX[i] -= dx[i];
      dx[i] = -dx[i];
      a+=10;
      
    }
    
    if (ballY[i] > height || ballY[i] < 0) {
      ballY[i] -= dy[i];
      dy[i] = -dy[i];
        a*=-1;
    }
    
  }
}