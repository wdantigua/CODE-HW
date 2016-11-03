int COLS_NUM = 30;
int ROWS_NUM = 30;

float[][] posx = new float[COLS_NUM][ROWS_NUM];
float[][] posy = new float[COLS_NUM][ROWS_NUM];
int lifetime =100;
boolean switcher = true;
void setup() {
  size(600, 600);

  float xStepAmount = (width-200)/(posx.length - 1);
  float yStepAmount = (height-200)/(posx[0].length - 1);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      posx[i][j] = 100 + i * xStepAmount;
      posy[i][j] = 100 + j * yStepAmount;
    }
  }



}

void draw() {
  filter(BLUR*100);
  background(5);
  noStroke();
  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      float r = map(i,0,posx.length,0,255);
      float g = map(j,0,posx[0].length,0,255);
      float b = map(dist(width/2,height/2,posx[i][j],posy[i][j]),0,100,0,255);
      fill(r,g,b);
      ellipse(posx[i][j], posy[i][j],cos(frameCount*0.03)*10,cos(frameCount*0.03)*10);
      posx[i][j] += random(-10,10);
      posy[i][j] += random(-10,10);
      //lifetime-=10;
      
      
      //if(lifetime == 0 && switcher ==true){
      //  posx[i][j] = 1 ;
      //posy[i][j] = 1 ;
      //lifetime =100;
      //switcher =false;
      //}
      // if(lifetime == 0 &&switcher == false){
      //  posx[i][j] += random(-10,10);
      //posy[i][j] += random(-10,10);
      //lifetime =100;
      //switcher =true;
      //}
      
      
    }
  }
}