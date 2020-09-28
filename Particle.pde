class Particle 
{
  PVector pos;
  PVector vel;
  PVector acc;
  float diameter;
  
  Particle(PVector pos, PVector vel, float diameter)
  {
    this.pos = pos;
    this.vel = vel;
    this.diameter = diameter;
    
    acc = new PVector(0, 0);
  }
  
  void addForce(PVector force)
  {
    acc.add(force);
  }
  
  void draw() 
  {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    ellipse(pos.x, pos.y, diameter, diameter);
  }
}
