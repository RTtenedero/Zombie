Zombie Z1;
float x3, y3;
int x, y, x2, y2, b1, b2;
PVector[] player;
PVector movement;
PVector speed;
void setup() {
  size(800, 800);
  x3 = 500;
  y3 = 400;
  x = 400;
  y = 400;
  x2 = width/2;
  y2 = height/2;
  b1 = 0;
  b2 = 0;
  Z1 = new Zombie(color(59, 245, 22),0,400,1);
}

void draw() {
  move();
  
  
  
  background(232, 239, 37);
  //soldier character
  noStroke();
  fill(0);
  rect(x, y, 10, 50);
  fill(#308B42);
  ellipse(x, y, 50, 50); 
  //zombie
  Z1.display();
  Z1.speed();
  
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
class Zombie {
color z;
float xpos;
float ypos;
float zspeed;
  Zombie(color tempZ, float tempXpos, float tempYpos, float tempZspeed) {
  z = tempZ;
  xpos = tempXpos;
  ypos = tempYpos;
  zspeed = tempZspeed;
}
void display() {
  noStroke();
  fill(z);
  ellipse(xpos, ypos, 50, 50);
  }
void speed() {
  xpos =  xpos + zspeed;
  if (xpos > width) {
    xpos = 0;
    }
  }
}
