int recRot =45;
int h= 500;
int x=0;
int y=0;

void setup()
{
  size(600,600);
  background(255);
}


void draw () 
{
  
  translate(400,height/2);
  scale(0.8);
  drawVoid(0,0);

  drawVoid(400,200);

  drawVoid(700,0);
}


void drawVoid (int voidX,int voidY ) 
{
  x = voidX;
  y = voidY;
  
    pushMatrix();
//place cordinates in middle, scale down and rotate
   translate(width/2,height/2);
   rotate(radians(recRot));
//place rect pivot in middle
   rectMode(CENTER);
//make a large rectangle with no fill and 10% transparent
  noFill();
  stroke(random(255),30);
  rect(x,y,10,h);
 
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
  rect(x,y,39,60);
  rotate(radians(45));

//create second rectangle 
  stroke(random(255),30);
  noFill();
  rect(x-50,y-50,13,20);
  rotate(radians(45));
//create second rectangle 
  stroke(random(255),30);
  noFill();
  rect(x-99,y-99,26,40);
  rotate(radians(45));


  popMatrix();
  popMatrix();

}