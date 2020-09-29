
abstract class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;

  Particle() {
    location = new PVector(mouseX, mouseY);
    velocity = new PVector(random(-10, 10), random(-10, 10));
  //  acceleration = new PVector(0, -0.01);
  }

  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(location);
    mouse.setMag(0.5);
    acceleration = mouse;
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(1);
  }

  void display() {
    ellipse(location.x, location.y, 6, 6);
  }
}
