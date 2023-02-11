int highscore = 0;

void highscores(){
   if (gameMode == 0){   
      output.println(killCounter);
      output.flush();
      output.close();
   }
 }
 
 void continueGame(){
  if(gameMode == 0 && keyCode == DOWN){
  gameMode=1;
  }
 }
 
 void startMenu(){
   if(gameMode == 0){
   image(startMenu, 0, 0);
   }
 }
 
 void gameOver(){
   if(gameMode == 2){
     image(gameOver, 0,0);
     textSize(60);
     fill(100,255,200);
     
     if(killCounter > highscore){
     text("Highscore is: " + killCounter,10,450);
     }
     if(highscore>killCounter){
       text("Highscore is: " + highscore,10,450);
     }
     }
 }
 
 void restartGame(){
   if(gameMode == 2 && keyPressed == true){
     gameMode = 1;
     killCounter=0;
   }
 }
