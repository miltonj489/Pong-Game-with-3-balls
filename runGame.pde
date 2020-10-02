void runGame() {
  for (int i = 0; i<255; i++) {
     background(random(255), random(255), random(255));
    }
  ba1.display();
  ba1.move();
  ba1.hitPaddle();
  
  ba2.display();
  ba2.move();
  ba2.hitPaddle();
  
  ba3.display();
  ba3.move();
  ba3.hitPaddle();
  
  p.display();
  
 
 
// Displays Points at the top right of the screen
    textSize(32);
    fill(0);
    text("Points: " + score,30, 30);
   
}
