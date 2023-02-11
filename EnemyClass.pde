final color Enemy1 = color(0); 
int killCounter = 0;
  
class Enemy extends Movement
{
  float X;
  float Y;
  int speedY=2;
  
  float randomX;
  PImage bluePlanet, greenPlanet, yellowPlanet;
  int imageCounter;
  PImage[] planet =  new PImage[3];

  Enemy(float X, float Y)
  {
   super(X,Y);
   this.X=X;
   this.Y=Y;
  
   bluePlanet = loadImage("blue.png"); 
   greenPlanet = loadImage("green.png"); 
   yellowPlanet = loadImage("yellow.png"); 
  }
  
  void render()
  {
      planet[0] = loadImage("blue.png"); 
      planet[1] = loadImage("green.png"); 
      planet[2] = loadImage("yellow.png"); 
  
  
    if(imageCounter >0 & imageCounter<=20)
      {image(planet[0],this.X,this.Y);}
      
    else if(imageCounter >20 & imageCounter<=40)
      {image(planet[1],this.X,this.Y);}
      
    else if(imageCounter >40 & imageCounter<=60)
      {image(planet[2],this.X,this.Y);}
     
      imageCounter = imageCounter+1;
    if(imageCounter >60)
    {
      imageCounter=0;
    }
   move();
  }

  void move()
  {
    this.Y = this.Y-speedY;
    randomX = random(-10,10);
    this.X = X + randomX;
    
    if (this.Y <= 0)
    {
      Y = 800;
    }
    
    if (this.X <= 0)//
    {
      X = X+10;
    }
    
    if (this.X >= 400)
    {
      X = X-10;
    }
  }
    
  boolean isShot(Bullet other)
  {
    if(bullet1 !=null)
    {
      if(abs(this.X-other.X)<80 && abs(this.Y - other.Y)<80)
      return true;
    }
    
    return false;
  }
 
}
