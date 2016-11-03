PImage img;
int down = -500;
void setup()
{
  size(500,500);
  img = loadImage("cat.jpg");
  noStroke();
  
}

void draw() 
   {
  background(255);
 
  for (int i = 0; i < width; i+=20) {
    for (int j = 0; j < height; j+=20) {
      color c = img.get(i, j);
      fill(c);
      rect(i,j, 15, width);
    }
  }
}