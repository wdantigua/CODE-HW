class Pika
{  
  
  PImage pika;
  PImage pika2;
  
  int x;
  int y;
  
  Pika(int _x,int _y)
  {
     pika = loadImage("pika.png");
     pika2 = loadImage("pika2.jpg");
     
     x = _x;
     y = _y;
        
  }
  
  void display()
  {
    if(mousePressed == false)
    {
      image(pika,x,y);   
    } 
  }
  
  void update()
  {
     if(mousePressed == true)
       {
           image(pika2,x,y);
           
       }
  }
  
  
}