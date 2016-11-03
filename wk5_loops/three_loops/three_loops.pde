float ang = 45;
void setup()
{
  background(255);
  size(600,600);
 
 float num=0; 
  while (num<600)
    {
      line(num,50, num,550);
      num+=60;
    }
    
  for(int i=0; i<600; i+=60)
    {
      line(50,i, 550,i);
    }
   
 
}

void draw()
{
   noStroke();
   fill(0,5);
    translate(width/2,height/2);
    //rotate(radians(ang++));
     
  for(int i=0; i<360;i+=10)
    {
      
      rotate(radians(i));
      rectMode(CENTER);
       rect(0,0,500,1);
    }
}