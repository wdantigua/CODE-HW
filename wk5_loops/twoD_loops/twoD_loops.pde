int i=0;
int j=0;
int siz = 50;

void setup()
{
  background(255);
  size(600,600);
 noStroke();
  
  for(i=20;i<575;i+=52)
  {
    for(j=20;j<575;j+=52)
    {
    rect (i,j,siz,siz);
    fill(map(i,0,400,0,255),map(j,0,400,0,255),200);
    }
    
  
  }
}