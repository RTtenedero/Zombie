ArrayList<zombie>Dead;
int ZombieWidth = 48;

void setup() {
size(500, 500);
noStroke();

Dead = new ArrayList<zombie>();
Dead.add(new zombie(width/2, 0, ZombieWidth));
}
void draw() {
  
}
