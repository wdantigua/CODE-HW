Pika chu ;

void setup()
{
   chu = new Pika(0,0);
  size(350,350);
}

void draw()
{
 //will change image on click 
 background(255); 
  chu.update();
  chu.display();

}