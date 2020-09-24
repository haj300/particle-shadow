class ColorParticle extends Particle{
  
    void display() {
    ellipse(location.x, location.y, 6, 6);
   // fill(random(0,5), random(0,255), random(0,5), random(0,255));
    noStroke();
  }
}
