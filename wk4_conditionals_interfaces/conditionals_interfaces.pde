
float size=0;

void setup()
{
//size window 600 by 600
// background white

  size(600,600);
  background(255);
     
}

void draw()
{
  //set the coordinate in center

    translate(mouseX,mouseY );
    
  //set the stroke black with 20 opacity
  
  
       stroke(0,20);
       
  // fill a range of colors following mouse pos and ellipse size
  
      fill(map(mouseX,0,width,100,255),map(mouseY,0,height,100,255),map(size, 0,500,255,100));
      ellipseMode(CENTER);
 
 // ellipse w/h = the value of the size variable
      ellipse(0,0, size,size);
      ellipseMode(CENTER);
      size++;

// if mouse pressed wipe the canvas white
  if(mousePressed==true)
      {   
        background(255);
      }
 
//if size is over 300 size value will substract
if( size >200 )
    {
       size*=-1;
       
//if size is under 0 size will add       
   } 
if( size<0 )
    {
        size*=1;
      
       
   } 
  }
  