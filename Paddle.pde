class Paddle {
 Paddle(){
 }
 
 void display() {
   // Displays and constrains paddle
  rectMode(CENTER);
  fill(0);
  rect(mouseX, gap, paddleSize, 20);
  gap=height-30;
  
  if (mouseX-paddleSize < 0 || mouseX-paddleSize > width) {
    mouseX = 0; 
  }
 }
  
}
