 Bacteria [] germs;
 void setup()   
 {     
  size(500,500);
  background(0);
  germs=new Bacteria[50];
  for(int i = 0; i < germs.length;i++)
  {
    germs[i] = new Bacteria() ;
  }   
 }   
 void draw()   
 {    
   for(int i=0;i<germs.length;i++)
   {
     germs[i].move();
     germs[i].show();
   }   
 }  
 class Bacteria    
 {     
   int x,y;
   int fill;
   Bacteria()
   {
     x=(int)(Math.random()*500);
     y=(int)(Math.random()*500);
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   }
   void move()
   {
     x=x+(int)(Math.random()*3)-1;
     y=y+(int)(Math.random()*3)-1;
   }
  void show()
  {
    ellipse(x,y,5,5);
    ellipse(x,y,5,5);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
 }