int[] ellipseXPos = new int[100];

void setup() {
  background(50);
  size(1000, 400);

  for (int i = 0; i < ellipseXPos.length; i++) {
    ellipseXPos[i] = 0;
  }
}

void draw() {
  fill(250,20);
  noStroke();
  rect(0,0,width,height);
  
  
  noStroke();
  for (int i = 0; i < ellipseXPos.length; i++) {
    fill(map(ellipseXPos[i], 0,width, 0, 255),200,map(ellipseXPos[i], 0,width/2, 0, 255));
    ellipse(ellipseXPos[i], i * 5, 20, 20);
  }

  for (int i = 0; i < ellipseXPos.length; i++) {
    if (ellipseXPos[i] < width) {
      ellipseXPos[i] += i/3;
    } else {
      ellipseXPos[i] = 0;
    }
  }
}