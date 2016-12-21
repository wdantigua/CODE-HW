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


void draw() {
  background(0);
  
  int widthStep = 15;
  int heightStep =15;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = m.get(i, j);

      stroke(c);
      strokeWeight(3);
     line(random(0,50)+i,random(0,50)+j,random(0,50)+i,random(0,50)+j);
       
    }
  }
}