  void setup()
  {
     size(600,600);
     noLoop();
  }
  void draw()
  {
      //your code here
      int sum = 0;
      Die bob;
      background(100);
      for(int x = 50; x<500; x+=55){
      bob = new Die(x,150);
      bob.roll();
      bob.show();
      if (bob.count==1)
      sum=sum+1;
      if(bob.count==2)
      sum=sum+2;
      if(bob.count==3)
      sum=sum+3;
      if(bob.count==4)
      sum=sum+4;
      if(bob.count==5)
      sum=sum+5;
      if(bob.count==6)
      sum=sum+6;
      textSize(30);
     }
     text("The total of all dice is " +sum , 150,250);
  }
  void mousePressed()
  { 
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int count;
      int myX, myY;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          count= (int)(Math.random()*6)+1;
          myX=x;
          myY=y;
      }
      void roll()
      {
          count= (int)(Math.random()*6)+1;
            
      }
      void show()
      {
          //your code here
          stroke(0);
          fill(255);
          rect(myX,myY,50,50);
          fill(0);
          if (count==1)
          ellipse(myX+25,25+myY,10,10);
         
          if (count==2){
          ellipse(myX+10,10+myY,10,10);
          ellipse(myX+40,40+myY,10,10);
      
          }
          if (count==3){
          ellipse(myX+10,10+myY,10,10);
          ellipse(myX+25,25+myY,10,10);
          ellipse(myX+40,40+myY,10,10);          
    

          }
          if (count==4){
          ellipse(myX+10,10+myY,10,10);
          ellipse(myX+10,40+myY,10,10);
          ellipse(myX+40,40+myY,10,10);
          ellipse(myX+40,10+myY,10,10);
      

          }
          if (count==5){
          ellipse(myX+10,10+myY,10,10);
          ellipse(myX+10,40+myY,10,10);
          ellipse(myX+25,25+myY,10,10);
          ellipse(myX+40,40+myY,10,10);
          ellipse(myX+40,10+myY,10,10);
        
          }
          if (count==6){
          ellipse(myX+10,10+myY,10,10);
          ellipse(myX+10,40+myY,10,10);
          ellipse(myX+10,25+myY,10,10);
          ellipse(myX+40,40+myY,10,10);
          ellipse(myX+40,10+myY,10,10);
          ellipse(myX+40,25+myY,10,10);
          
          }
      }
  }
