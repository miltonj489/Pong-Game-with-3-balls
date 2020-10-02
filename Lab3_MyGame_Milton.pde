// Variable declaration
float gap;
Ball ba1;
Ball ba2;
int i = 0;
Ball ba3;
Paddle p;
int score = 0;
int paddleSize = 200;
boolean startGame = true;
boolean runGame = false; 

void setup() {
  // Sets up window size and gap height
  score = 0;
  size(600, 500);
  ba1 = new Ball(); 
  ba2 = new Ball();
  ba3 = new Ball();
  p = new Paddle();
 
}

void draw() {
  if (startGame) {
    startGame();
  } else if (runGame){
    runGame();
  }
}
  
void startGame() {
  background(255);
  fill(0);
  textSize(15);
  text("Juggling Game", width/3,height/12);
  text("Instructions", width/3,height/8);
  text("Keep the three balls in the air at all times", width/12, height/6);
  text("Each time you bounce one of the balls, you", width/12,height/5);
  text("earn a point, but if you drop one, the game is over.", width/12, height/4);
  text("Good luck!", width/12, height/3);
  rectMode(CENTER);
  // start button
  
  fill(0,255,0);
  rect(width/10,height/2,width/10,height/10);
  fill(0);
  text("Start", width/14,height/2);
  
  // exit button 
  fill(255,0,0); 
  rect(width-100,height/2,width/10,height/10);
  fill(255);
  text("Exit", width-110,height/2);
} 

void mousePressed() {
  if (runGame) {
    return;
  } else if (mouseX<width-100 + width/20 && mouseX> width-100 - width/20 && mouseY>height/2- height/20 && mouseY<height/2+height/20){
  exit();
  } else if(mouseX<width/10+width/20 && mouseX>width/10 - width/20 && mouseY>height/2-height/20 && mouseY<height/2+height/20){
  runGame = true;
  startGame = false;
  }
}
