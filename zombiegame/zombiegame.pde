float x3, y3;
color z;
float zspeed;
int x, y, x2, y2, b1, b2;
PVector[] player;
boolean shoot;
PVector movement;
void setup() {
  size(800, 800);
  z = color(59, 245, 22);
  x3 = 500;
  y3 = 400;
  zspeed = 1;
  x = 400;
  y = 400;
  x2 = width/2;
  y2 = height/2;
  b1 = 0;
  b2 = 0;
  movement = new PVector(width/2, height/2, 0);
  
}

void draw() {
  
  move();
  movement.add(
 
  background(232, 239, 37);
  //soldier character
  noStroke();
  fill(0);
  rect(x, y, 10, 50);
  fill(#308B42);
  ellipse(x, y, 50, 50); 
  //zombie
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

void move() {
  if(keyPressed) {
  if(key == CODED); {
    if (keyCode == UP) y-= 3;
    //move left
    if (keyCode == LEFT) x-= 3;
    //move right
    if (keyCode == RIGHT) x+= 3;
    //move down
    if (keyCode == DOWN) y+= 3;
    }
  }
}
