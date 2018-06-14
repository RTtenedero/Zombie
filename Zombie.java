ArrayList<bullets> Bullets = new ArrayList<bullets>();
ArrayList<Zombie> zombies = new ArrayList<Zombie>();
Zombie Z1, Z2, Z3;
bullets b;
float x3, y3;
int b1 = 0;
int b2 = 0;
int o = 400;
int x2, y2, a;
PVector[] player;
PVector playermovement;
PVector bulletspeed;
void setup() {
  size(800, 800);
  x3 = 500;
  y3 = 400;
  a = 255;
  playermovement = new PVector(width/2, height/2);
  x2 = width/2;
  y2 = height/2;
  Z1 = new Zombie(color(59, 245, 22), 0, o, 1);
  Z2 = new Zombie(color(255, 0, 0), 0, 600, 3);
  Z3 = new Zombie(color(59, 245, 22), 400, 0, 1);
}
void draw() {
  move(); 

  background(232, 239, 37);
  //soldier character
  noStroke();
  fill(48, 139, 66, a);
  ellipse(playermovement.x, playermovement.y, 50, 50); 
  //zombie
  // collision 
  if (playermovement.x >= width - 80) {
    playermovement.x = width - 720;
  } else if (playermovement.x <= width - 720) {
    playermovement.x = width - 80;
  } else if (playermovement.y >= height - 80) {
    playermovement.y = height - 730;
  } else if (playermovement.y <= height - 730) {
    playermovement.y = height - 90;
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
// bullet
class bullets {
  color speed;
  float bulletx;
  float bullety;
  float bulletspeed;
  bullets(color speed, float bulletx, float bullety, float bulletspeed) {
    speed = 0;
    bulletx = playermovement.x;
    bullety = playermovement.y;
    bulletspeed = 3;
  }

void display() {
  noStroke();
  fill(speed);
  rect(playermovement.x,playermovement.y,30, 30);
  }
}
void move() {
  // up,down,left, and right keys
  if (keyPressed) {
    if (key == CODED); {
      if (keyCode == UP) playermovement.y-= 1.8;
      //move left
      if (keyCode == LEFT) playermovement.x-= 1.8;
      //move right
      if (keyCode == RIGHT) playermovement.x+= 1.8;
      //move down
      if (keyCode == DOWN) playermovement.y+= 1.8;
    }
  }
}
//zombie
class Zombie {
  color z;
  float xpos = random(0, 400);
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
  void speed2() {
    ypos = ypos + zspeed;
    if (ypos > height) {
      ypos = 0;
    }
  }
}
