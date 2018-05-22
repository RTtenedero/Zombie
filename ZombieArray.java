ArrayList<Zombie>zombies;
int ZombieWidth = 48;

void setup() {
size(500, 500);
noStroke();

zombies = new ArrayList<Zombie>();
zombies.add(new Zombie(width/2, 0, ZombieWidth));
}
void draw() {
  
}
