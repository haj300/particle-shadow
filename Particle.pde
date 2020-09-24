
abstract class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;

  Particle() {
    location = new PVector(mouseX, mouseY);
    velocity = new PVector(random(-10, 10), random(-10, 10));
    acceleration = new PVector(0, -0.01);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
  }

  void display() {
    ellipse(location.x, location.y, 6, 6);
  }
}
