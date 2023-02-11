class Player extends Movement
{
  int X ;  //Declaring defenders variables
  int Y;
 
  Player(int X, int Y) //Constructors
  {
   super(X, Y);
  }
  
  void render() //This method draws the defender on the canvas when called with player1.render();
  {
   stroke(255);
   fill(42,157,235);
   ellipse(X,Y+50,100,100);
   fill(0,255,100);
   
   ellipse(X-30,Y+35,35,19);//North America
   ellipse(X-30,Y+70,20,30); //Southern America
   ellipse(X+5,Y+70,30,15);//AfricaTop
   ellipse(X+10,Y+80,20,30);//Africa
   ellipse(X+10,Y+35,30,25);//Europe
   ellipse(X+30,Y+35,30,25);//Asia
  }
  
  void playerBoundry() //This stops the player from moving off the screen, but if it does it brings it back at the opposite Y value 
  {
  
  if (this.X <= 0)
    {
      X = 0;
    }
    
    if (this.X >= 400)
    {
      X = 400;
    }
  }
  
boolean drawCrashLineDefender() //Dectects crash in front of the defender using a loop and if the color of the plotted points are = ALIEN1 or ALIEN2 colors then the game ends and tells user GAME OVER!
{
  for (int i=0;i<50;i++)
    {
      color test=get(player1.X+i,player1.Y+105);
       if (test==Enemy1){
         stroke(255);
         fill(255,255,0);
         textSize(75);
         text("GAME OVER!",0,230);
         gameMode=2;
       }       
    }  
    
    return true;
 }
}

  void keyPressed()
  {
    if (key==CODED)
    {
      if(keyCode == LEFT)
      {
        player1.X = player1.X-15;
      }
       if(keyCode == RIGHT)
      {
        player1.X = player1.X+15;
      }
    }
  }
