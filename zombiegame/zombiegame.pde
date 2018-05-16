int x, y;
PVector[] zombie;
PVector[] zombiemovement;
int z;
int d;
float r, g;
void setup() {
  size(800, 700);
  x = width/2;
  y = height/2;
  d = height/2;
  z = width/2;
  zombie = new PVector[50];
  zombiemovement = new PVector[50];
  for (int In = 0; In < zombie.length; In++) {
  float r = random(0, width);
  float g = random(0, 50); 
  zombie[In] = new PVector(z, y);
  zombiemovement[In] = new PVector(0, 0);
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
// boundaries you can't cross 
 fill(#8E0808);
 rect(0, 0, width, height - 650);
 rect(0, 0, width - 750, height);
 rect(0, 650, width, height);
 rect(500, 650, width, height);
 
 //zombie
 for (int i = 0; i < zombie.length; i++)  {
   zombie[i].add(0, 4);
   zombie[i].add(zombiemovement[i]); 
   
   if (zombie[i].y > width) {
     zombie[i].y = - 750;
     zombie[i].y = (int) random(100, 0);
  }
 fill(#3BF516);
 ellipse(zombie[i].x, zombie[i].y, 50, 50);

}
if (keyPressed) {
  if (key == CODED) {
    if (keyCode == UP) y--;
    if (keyCode == RIGHT) x++;
    if (keyCode == DOWN) y++;
    if (keyCode == LEFT) x--; 
    if (keyCode == UP + RIGHT);
    }
  }
}
    
