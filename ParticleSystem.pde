PVector gravity;
int numOfParticles;
ArrayList<Particle> particles = new ArrayList<Particle>();

void setup()
{
  size(400, 700);
  gravity = new PVector(0, 0.3);
  
  numOfParticles = 150;
  
  for (int i = 0; i < numOfParticles; i++)
  {
    PVector pos = new PVector(width/2, height/2);
    PVector vel = new PVector(random(-3, 3), random(-15, -7));
    float diameter = random(1, 10);
    Particle p = new Particle(pos, vel, diameter);
    particles.add(p);
  }
}

void draw()
{
  redrawTransparentBackground();
  for (Particle p : particles)
  {
    p.addForce(gravity);
    p.draw();
    
    if(p.pos.y > (height - random(3, 5)))
    {
      p.pos = new PVector(width/2, height/2);
      p.vel = new PVector(random(-3, 3), random(-15, -7));
    }
  }
}

void redrawTransparentBackground()
{
  // For the trailing effect
  fill(0, 30);
  rect(0, 0, width, height);
}
