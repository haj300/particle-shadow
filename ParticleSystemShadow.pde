import peasy.*;

PeasyCam cam;

Particle particle;
ArrayList<Particle> particleList;

void setup() {
  size(600, 600);
  particle = new ColorParticle();
  particleList = new ArrayList<Particle>();
  frameRate(10);
}

void draw() {

 addParticle();

  for (int i = 0; i < particleList.size()-1; i++) {
    particle = particleList.get(i);
    particle.update();
    particle.display();
    if (particle.location.y > height){    
      particleList.remove(particle);
    }
  }

}

void addParticle() {
  particleList.add(new RectangleParticle());
}

void keyPressed(){
  clear();
  background(200);
  particleList.removeAll(particleList);
  println(particleList.size());
}

void mousePressed(){
  fill(255, 0, 0);
}

void mouseReleased(){
  fill(255);
}
