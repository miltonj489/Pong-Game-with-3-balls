class Ball {
float circleX;
float circleY;
float dis_p;
float rcolor;
float gcolor;
float bcolor;
float speed= 5;
float xDir;
float yDir;
  
  Ball() {
    circleX= random(639) + 1;
    circleY = 1; 
    dis_p = random(height);
    xDir= random(-1, 1);
    yDir= random(-1, 1);
    dis_p=dist(circleX, circleY, mouseX, gap);
    rcolor=random(255);
  gcolor=random(255);
  bcolor=random(255);
  }
  
  void display(){
  // Draws the ball a random color every frame
  fill(rcolor,gcolor,bcolor);
  circle(circleX,circleY,20);

  }
  
  void move() {
    circleY=circleY+ speed * yDir;
  circleX=circleX+ speed * xDir;
  }
  
  void hitPaddle(){
     if ((circleY >= gap - 10) && (circleX <= mouseX + paddleSize/2) && (circleX >= mouseX - paddleSize/2)) { 
      //Check if ball hits paddle. Condition: (circleY >= gap - 10) && (circleX <= mouseX + paddleSize/2) && (circleX >= mouseX - paddleSize/2)
      yDir = yDir * -1;
      score = score + 1;
      speed = speed + 1;
     
    }
  else if (circleY >= height) {
    background(255);
    textSize(22);
    fill(0);
    text("GAME OVER", 100, 180);
    score = 0;
    textSize(32);
    fill(0);
    text("Points: " + score,30, 30);
    }
   else if (circleX >= width || circleX <= 0) {
     xDir = xDir * -1;
   }
   else if (circleY >= height || circleY <= 0) {
     yDir = yDir * -1;
   }
   
  }
  
  
}
