import processing.video.*;
int x, y;

Movie img;

void setup()
{
  img = new Movie(this,"asereje.mov");
  size(displayWidth,displayHeight);
  img.loop();

}

void movieEvent(Movie img)
{
 img.read();
}


void draw() {
  background(0);
  
  int widthStep = 10;
  int heightStep = 10;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
      
 

      
      pushMatrix();

      translate(i,j);
      strokeWeight(5);
      stroke(c);
     point(0,0);
     popMatrix();
    }
  }
}