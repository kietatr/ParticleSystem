PVector gravity;
ArrayList<Particle> particles = new ArrayList<Particle>();

PImage img;

void setup()
{
  size(400, 800);
  
  gravity = new PVector(0, 0.3);
  
  int numOfParticles = 150;
  
  for (int i = 0; i < numOfParticles; i++)
  {
    PVector pos = new PVector(width/2, height/2);
    PVector vel = new PVector(random(-3, 3), random(-20, -10));
    float diameter = random(1, 10);
    Particle p = new Particle(pos, vel, diameter);
    particles.add(p);
  }
  
  img = loadImage("fish.jpg");
}

void draw()
{
  redrawTransparentBackground();
  
  // Draw the fish with a blue tint
  tint(0, 153, 204, 50);
  image(img, -70, 240);
  
  fill(0, 120, 204);
  for (Particle p : particles)
  {
    p.addForce(gravity);
    p.draw();
    
    if(p.pos.y > height+600)
    {
      p.pos = new PVector(width/2, height/2);
      p.vel = new PVector(random(-2, 2), random(-15, -14));
    }
  }
}

void redrawTransparentBackground()
{
  // For the trailing effect
  fill(0, 30);
  rect(0, 0, width, height);
}
