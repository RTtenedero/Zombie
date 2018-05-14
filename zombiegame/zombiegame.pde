int x, y;
PVector[] zombie;
PVector[] zombiemovement;
void setup() {
  size(800, 700);
  x = width/2;
  y = height/2;
  
  zombie = new PVector[50];
  zombiemovement = new PVector[50];
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
 rect(0, 700, width, height);

 
 
 
 if(x > width || x < width); {
   
 }
 
 
if (keyPressed) {
  if (key == CODED) {
    if (keyCode == UP) y--;
    if (keyCode == RIGHT) x++;
    if (keyCode == DOWN) y++;
    if (keyCode == LEFT) x--; 
  }
  if(key == RIGHT)  {
    translate(width/2, height/2);
    rotate(PI/3.0);
    rect(x, y, 52, 52);
    }
  }
}