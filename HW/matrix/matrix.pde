int recRot =45;
int h= 500;

void setup() {
  
  size(600,600);
   rectMode(CENTER);
}
void draw() {
  pushMatrix();
   //place cordinates in middle, scale down and rotate
   translate(width/2,height/2);
  rotate(radians(recRot));
  //place rect pivot in middle
  rectMode(CENTER);
//make a large rectangle with no fill and 10% transparent
  noFill();
  stroke(random(255),30);
  rect(0,0,10,h);
 
//rotate ++
 recRot++;
//reduce height  to 0
h--;
if (h<1) {
  h+=2;}

//when it reaches 0 increase to 600 and 0 back and forth
pushMatrix();
//create second rectangle 
stroke(random(255),30);
noFill();
translate(100,height/2);
rect(0,0,39,60);
rotate(radians(45));

//create second rectangle 
stroke(random(255),30);
noFill();
rect(-50,-50,13,20);
rotate(radians(45));
//create second rectangle 
stroke(random(255),30);
noFill();
rect(-99,-99,26,40);
rotate(radians(45));


popMatrix();
popMatrix();


//70% smaller than first
//it will zigzag up and down left to right




}