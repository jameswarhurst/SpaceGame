import java.util.Scanner;
import java.util.*;
PImage background; //Object can store jpg image 
PImage startMenu;
PImage gameOver;
int bgX=0; //global variable background location
int gameMode = 0;
PrintWriter output;
int crashCounter;
Player player1;
Bullet bullet1;
Asteriod[] AsteriodArray = new Asteriod[2];
Enemy[] EnemyArray = new Enemy[3]; 

void setup()
{
  size(400,800);
  background = loadImage("background4game.png");
  startMenu = loadImage("startMenu.png");
  gameOver = loadImage("gameOver.png");
  background.resize(width,height);
  output = createWriter("scoreList.txt");

 for (int i = 0; i < EnemyArray.length; i++ ) {
    float x = random(width);
    float y = random(height);
    EnemyArray[i] = new Enemy(x, y);
   }
   
   for (int i = 0; i < AsteriodArray.length; i++ ) {
    float x = random(width);
    float y = random(height);
    AsteriodArray[i] = new Asteriod(x, y);
   }
   
  player1 = new Player(50,150);
  bullet1 = new Bullet(player1.X,player1.Y,12);
}

void draw ()
{
  if (gameMode==1)
  {
   scrollBackground();
   
   for ( Enemy alien : EnemyArray ) {
    alien.render();
  }
   for ( Asteriod ast : AsteriodArray ) {
    ast.render();
  }
 
   player1.render();
   player1.playerBoundry();
   player1.drawCrashLineDefender();
   
   alienCrash();
   highscores();
   
     if (keyCode == UP)
     {
        bullet1.render();
        if (bullet1.Y >=  height)
        {
          bullet1.X = player1.X;
          bullet1.Y = player1.Y;
        }
     }
  }
  gameOver();
  continueGame();
  startMenu();
  restartGame();

}

void scrollBackground()
{
   //scrolling background image
    image(background, 0, bgX); //draw image to fill the canvas
    //draw image again off the right of the canvas
    image(background, 0, bgX+background.height);    
    bgX = bgX- 4;
    if(bgX == -background.height) //if first image completely off the canvas
    {
      bgX=0; //reset back to initial value background
    }  
}

 void alienCrash()
  {
    for(int i=0;i<3;i++){
    if(EnemyArray[i].isShot(bullet1))
    {
      EnemyArray[i].Y =1000;
      killCounter=killCounter+1;
    }
    textSize(22);
    fill(40,100,250);
    text("Planets Destroyed:  ",150,50);
    text(killCounter,320,50);
 }
  }
  
