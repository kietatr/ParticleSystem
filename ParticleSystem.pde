PVector gravity;
ArrayList<Firework> fireworks = new ArrayList<Firework>();

void setup()
{
  size(600, 400);
  gravity = new PVector(0, 0.3);
}

void draw()
{
  redrawTransparentBackground();
  
  if (random(1) < 0.5)
  {
    fireworks.add(new Firework());
  }
  
  for (Firework firework : fireworks)
  {
    firework.draw();
  }
}

void redrawTransparentBackground()
{
  // For the trailing effect
  fill(0, 30);
  rect(0, 0, width, height);
}
