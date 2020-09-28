class Firework
{
  Particle initiator;
  
  Firework()
  {
    PVector initiatorStartingPos = new PVector(random(20, width), height);
    PVector initiatorStartingVel = new PVector(0, random(-8, -2));
    float initiatorStartingDiameter = random(2, 10);
    initiator = new Particle(initiatorStartingPos, , );
  }
  
  void draw()
  {
    initiator.addForce(gravity);
    initiator.draw();
  }
}
