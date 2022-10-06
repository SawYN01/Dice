void setup()
{
  size(920,920);
  textAlign(CENTER, CENTER);
  noLoop();
}

Die bob;
void draw()
  {   
      int sum = 0;
      background(0);
      for(int y = 20; y < 830; y = y+90)
      {
          for(int x = 10; x < 850; x = x+90)
          {
          Die bob = new Die(x,y);
          bob.show();
          bob.roll();
          sum = sum + bob.numOfDie;
          }
      }
      fill(255);
      textSize(20);
      text("Total: " + sum ,450,870);
  }
void mousePressed()
  {
      redraw();
  }
class Die //models one single dice cube
  {
    //member variable declarations here
   int myX, myY, numOfDie;
      
   Die(int x, int y) //constructor
   {
     myX = x;
     myY = y; 
     roll();
     //variable initializations here
   }
   
   void roll()
   { 
    numOfDie = (int)(Math.random()*6)+1; 

    if (numOfDie == 1) {
      fill(255,0,0);
      ellipse(myX+40,myY+40,10,10);
    } 
    else if (numOfDie == 2) {
      fill(0,0,255);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+60,myY+60, 10,10);
    } 
    else if (numOfDie ==3) {
      fill(0,0,255);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+60,myY+60, 10,10);
    }
    else if (numOfDie ==4) {
      fill(0,0,255);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+60,myY+20,10,10);
      ellipse(myX+20,myY+60,10,10);
      ellipse(myX+60,myY+60, 10,10);
    }
    else if (numOfDie == 5) {
      fill(0,0,255);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+60,myY+20,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+20,myY+60,10,10);
      ellipse(myX+60,myY+60, 10,10);
    }
    else {
      fill(0,0,255);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+20,myY+40,10,10);
      ellipse(myX+20,myY+60,10,10);
      ellipse(myX+60,myY+20,10,10);
      ellipse(myX+60,myY+40,10,10);
      ellipse(myX+60,myY+60,10,10);
    }
   }
   
   void show()
      {
        fill((int)(Math.random()*150)+232, (int)(Math.random()*150)+89, (int)(Math.random()*150)+196);
        rect(myX,myY,80,80,10);
      }
 }
