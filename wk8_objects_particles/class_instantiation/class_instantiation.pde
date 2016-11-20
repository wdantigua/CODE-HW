Pika chu ;

void setup()
{
   chu = new Pika(0,0);
  size(600,600);
}

void draw()
{
 //will change image on click 
 background(255); 
  chu.update();
  chu.display();

}