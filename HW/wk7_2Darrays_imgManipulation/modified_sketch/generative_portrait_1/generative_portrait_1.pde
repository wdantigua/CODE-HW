PImage img;

void setup() {
  size(660, 990);
  img = loadImage("portrait.jpg");
  noStroke();
 
}

void draw() {
  //background(255);
   int pos=0;
  int widthStep = 5;
  int heightStep = 5;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
   
      pos += random(-5,5);
      strokeWeight(5);
      stroke(c);
      point(i, pos+j);
      
      
    }
  }
}