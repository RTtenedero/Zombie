Zombie Z1, Z2, Z3;
float x3, y3;
int b1 = 0;
int b2 = 0;
int x2, y2, a;
PVector[] player;
PVector movement;
PVector bulletspeed;
PVector bullet;
void setup() {
  size(800, 800);
  x3 = 500;
  y3 = 400;
  a = 255;
  movement = new PVector(width/2,height/2);
  bullet = new PVector(width/2,height/2);
  x2 = width/2;
  y2 = height/2;
  Z1 = new Zombie(color(59, 245, 22),0,400,1);
  Z2 = new Zombie(color(255,0,0),0, 600, 3);
  Z3 = new Zombie(color(59, 245, 22),400,0,1);
}
void draw() {
  move(); 
  background(232, 239, 37);
  //soldier character
  noStroke();
  fill(0);
  rect(movement.x, movement.y, 10, 50);
  fill(48, 139, 66, a);
  ellipse(movement.x, movement.y, 50, 50); 
  //zombie
  if(movement.x >= b1) {
   movement.x = 50 + movement.x; 
  }
  else if (movement.x <= b2) {
    
  }
  Z1.display();
  Z1.speed();
  Z2.display();
  Z2.speed();
  Z3.display();
  Z3.speed2();

  
  // boundaries you can't cross 
  
  fill(142, 8, 8);
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
    if (keyCode == UP) movement.y-= 3;
    //move left
    if (keyCode == LEFT) movement.x-= 3;
    //move right
    if (keyCode == RIGHT) movement.x+= 3;
    //move down
    if (keyCode == DOWN) movement.y+= 3;
    }
  }
}
class bullet {
color speed;
float bulletx;
float bullety;
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
  
  if(xpos >= movement.x); {

  }
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
void speed2() {
  ypos = ypos + zspeed;
  if (ypos > height) {
    ypos = 0;
    }
  }
}
void remove() {

}
