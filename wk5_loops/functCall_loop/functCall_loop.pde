float ang = 45;
color r =color(255,0,0);
color g =color(0,255,0);
color b = color(0,0,255);
void setup()
{
  background(255);
  size(600,600);
  
}

void draw()

{
  
 
  for(int i =2; i<6;i+=2)
  {
      translate(width/i,height/i); 
      newRot();
  }
  if(mousePressed)
  {
  save("cross.png");
  }

}

void newRot ()

{
   noStroke();
  
    
    
    rotate(radians(ang++));
     
  for(int i=0; i<360;i+=10)
    { 
      pushMatrix();
      fill(map(mouseX,0,600,0,255), map(mouseY,0,600,0,255),map(width,0,600,0,255),5);
       //fill(0,1);
       scale (0.5);
      rotate(radians(i));
      rectMode(CENTER);
       rect(0,0,500,1);
        popMatrix();
    }
    
}