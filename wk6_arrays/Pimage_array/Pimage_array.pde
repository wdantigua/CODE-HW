PImage[] img = new PImage[3];

void setup ()
{
  
  size(1000,1000);
 
  translate(0,height/3);
  for (int i = 0; i< img.length; i++)
    {
    img[i] = loadImage("cat"+i +".jpg"); 
         image (img[i],i*400,0);
        
    }
  
}