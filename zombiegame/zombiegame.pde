int x, y, y2, b1, b2;
PVector[] zombie;
PVector[] zombiemovement;
PVector[] player;
float r, g;
boolean shoot;

void setup() {
  size(800, 800);
  x = width/2;
  y = height/2;
  y2 = height/2;
  b1 = 0;
  b2 = 0;
  zombie = new PVector[10];
  zombiemovement = new PVector[10];
  for (int In = 0; In < zombie.length; In++) {
  float x = random(0, width);
  float y = random(0, 150); 
  zombie[In] = new PVector(x, y);
  zombiemovement[In] = new PVector(0, 0);
  shoot = false;
  }
}
 
void draw() {
  background(232, 239, 37);
  //soldier character
  noStroke();
  fill(0);
  rect(x,y, 10, 50);
  fill(#308B42);
  ellipse(x, y, 50, 50); 
 //zombie
 for (int i = 0; i < zombie.length; i++)  {
   zombie[i].add(0, 5);
   zombie[i].add(zombiemovement[i]); 
   
   if (zombie[i].y > 800) {
     zombie[i].y = - 400;
     zombie[i].y = (int) random(0, 0);
  }
 fill(#3BF516);
 ellipse(zombie[i].x, zombie[i].y, 50, 50);
 
 // boundaries you can't cross 
 fill(#8E0808);
 //upper barrier
 rect(b1, b2, width, height - 750);
 //left barrier
 rect(width - 820, b2, 80, height);
 //bottom barrier
 rect(b1, 670, width, 50);
 //right barrier
 rect(750, b2, 80, height);
}
if (keyPressed) {
    if (key == CODED); {
    //move up
    if (key == 'w') y-= 3;
    //move left
    if (key == 'a') x-= 3;
    //move right
    if (key == 'd') x+= 3;
    //move down
    if (key == 's') y+= 3;
    }
  }
}

