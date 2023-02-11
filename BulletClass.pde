class Bullet extends Movement
{
  float X = player1.X;  //Declaring defenders variables
  float Y = player1.Y;
  int speedY=12;

  Bullet(float X, float Y, float speedY) //Constructors
  {
   super(X, Y, speedY);
  }
  
  void render() //This method draws the defender on the canvas when called with player1.render();
  {
   fill(0);
   ellipse(player1.X,Y,60,10);
   stroke(90);
   fill(150);
   ellipse(player1.X,Y,40,40);
  
   move();
  }
  
  void move()
  {
      Y = Y + speedY;
  }
}
