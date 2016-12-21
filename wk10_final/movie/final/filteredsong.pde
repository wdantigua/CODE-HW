//https://www.openprocessing.org/sketch/392202
//https://www.youtube.com/user/shiffman


import com.lowagie.text.html.simpleparser.Img;

import processing.video.*;

float x, y;
float fx, fy;
int state, state1, state2, state3, state4, state5;
Movie m;

void setup()
{
  state=0;
  state1 =1; 
  state2 =2;
  state3 =3;
  state4 =4;
  state5 =5;

  m = new Movie(this, "asereje.mov");
  size(displayWidth, displayHeight);
  m.loop();
}

void movieEvent(Movie m)
{
  m.read();
}


void draw() {
 
  if (state == 0) {
    filter1();
  } else if (state==state1) {
    filter2();
  } else if (state==state2) {
    background(0);
    filter3();
  } else if (state==state3) {
    background(0);
    filter4();
  } else if (state==state4) {
   
    filter5();
  }

 
}
void mouseClicked()
{
 if (state==0) {
    state = state1;
  } else if (state==state1) {

    state = state2;
  } else if (state==state2)
  {

    state = state3;
  } else if (state==state3)
  {

    state = state4;
  } else if (state==state4)
  {

    state = 0;
  }


}
void filter1()
{

  for (int i=0; i < width; i+=10)
  {
    color c = m.get(int(x+i), int(y));
    fill(c);
    rect(x+i, 0, 10, displayWidth);
  }
}
void filter2()
{
  for (int i=0; i < displayWidth; i+=1)
  {
    x = random(0, displayWidth);
    y = random(0, displayHeight);
    color c = m.get(int(x), int(y));
    noStroke();
    fill(c,95);
    ellipse(x, y, 20, 20);
 
  }
}

void filter3()
{

  int widthStep = 10;
  int heightStep = 10;

  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = m.get(i, j);




      pushMatrix();

      translate(i, j);
      strokeWeight(5);
      stroke(c);
      point(0, 0);
      popMatrix();
    }
  }
}


void filter4()
{
  int widthStep = 10;
  int heightStep = 20;

  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = m.get(i, j);

      float r = red(c);
      float g = green(c);
      float b = blue(c);

      float brightness = (r+g+b)/3;

      float w = map(brightness, 0, 255, 5, 0);
      float h = map(brightness, 0, 255, 40, 0);
      noStroke();
      ellipse(i, j, w*3, h/2);
    }
  }
}


void filter5()
{
  int widthStep = 15;
  int heightStep =15;

  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = m.get(i, j);

      stroke(c);
      strokeWeight(3);
      line(random(0, 50)+i, random(0, 50)+j, random(0, 50)+i, random(0, 50)+j);
    }
  }
}