int x, y, y2, z, d, h2, n, u, p;
PVector[] zombie;
PVector[] zombiemovement;
PVector[] player;
float r, g;
boolean shoot;
void setup() {
  size(800, 800);
  x = width/2;
  y = height/2;
  d = height/2;
  z = width/2;
  n = 10;
  u = 50;
  p = 4;
  y2 = height/2;
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
 rect(0, 0, width, height - 750);
 rect(width - 820, 0, 80, height);
 rect(0, 670, width, 50);
 rect(750, 0, 80, height);
}
if (keyPressed) {
  if (key == CODED) {
    //move up
    if (keyCode == UP) y-=3;
    //move right
    if (keyCode == RIGHT) x+=3;
    //move down
    if (keyCode == DOWN) y+=3;
    //move left
    if (keyCode == LEFT) x-=3; 
    }
    else if (keyCode == UP + RIGHT){
    x+=2;
    y-=2;
    }
  } 
  if (keyPressed) {
    if(key == 'a') {
      rect(x, y2, 10, 10);
      shoot = true;
      y2 += 2;
      h2 = y2 + 2;
    }
  }
}

