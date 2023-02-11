class Asteriod extends Enemy{
   float x;
   float y;
   float speedX;
   PImage ast;
  
  Asteriod(float enemyX, float enemyY){
   super(enemyX, enemyY);
   ast = loadImage("AstIMG.png"); 
  }
  
  void render(){
    image(ast,this.X,this.Y);
    move();
  }
}
