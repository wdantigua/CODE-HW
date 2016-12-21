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
  
  int widthStep = 10;
  int heightStep = 20;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      
      float brightness = (r+g+b)/3;

      float w = map(brightness,0,255,5,0);
      float h = map(brightness,0,255,40,0);
      noStroke();
   ellipse(i,j,w*3,h/2);
    }
  }
}