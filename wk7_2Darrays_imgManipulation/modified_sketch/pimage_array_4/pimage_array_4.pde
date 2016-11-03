//we'll use this number just to set up our array size
int IMG_NUM = 10;

//create the image array of size 10
PImage[] pusheen = new PImage[IMG_NUM];

void setup() {
  background(255);
  size(700,500);
  imageMode(CENTER);
  
  //load all the images into our array
  for (int i = 0; i < pusheen.length; i++) {
    pusheen[i] = loadImage("pusheen"+i+".jpg");    
  }
}

void draw() {
  
  background(255);
  
  //if i want to use the 1D list to draw a grid,
  //i can do a 2D loop through our 1D array
  //what's the value of (int)sqrt(IMG_NUM)? why am i using it?
  //value is 3,square root made return int to keep the array mutable(i think)
  for (int i = 0; i < (int)sqrt(IMG_NUM); i++) {
    for (int j = 0; j < (int)sqrt(IMG_NUM); j++) {
       //for (int i = 0; i < IMG_NUM.length; i++) {
    //for(int j = 0; j < IMG_NUM.length; j++) {
      //translating a 1D index from 2D positions = width * row + column
      int index = (int)sqrt(IMG_NUM) * j + i;
      
      //adding some fun transform stuff cause why not
      pushMatrix();
      translate(100 + i * 150, 100 + j * 150);
      rotate((frameCount * 0.03) );
      image(pusheen[index], 0, 0, 100, 100);
      popMatrix();
    }
  }
  
}