float[] xPosArr = new float[10];

void setup() {
  size(600,600);
  noStroke();
  
  for (int i = 0; i < xPosArr.length; i++) {
    xPosArr[i] = 100 + i * 50;
    
  }

}

void draw() {
  background(70);
  
  for (int i = 0; i < xPosArr.length; i++) {
    xPosArr[i] += random(-i,i);
     println(xPosArr);
    fill(map(xPosArr[i], 0, width, 0, 255),200,map(xPosArr[i], 0, width, 0, 255));
    
    ellipse(width/2, xPosArr[i], xPosArr[i], 50);
  }
}