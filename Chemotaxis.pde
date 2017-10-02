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
   int myX,myY;
   int fill;
   Bacteria()
   {
     myX=(int)(Math.random()*500);
     myY=(int)(Math.random()*500);
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   }
   void move()
   {
     myX=myX+(int)(Math.random()*3)-1;
     myY=myY+(int)(Math.random()*3)-1;
   }
  void show()
  {
    ellipse(myX,myY,20,20);
    ellipse(myX,myY,20,20);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
 }