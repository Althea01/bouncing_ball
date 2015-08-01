
float xpos, ypos , xSpeed, ySpeed, xAcel, yAcel;

void setup ()
{
  size (640,480);
  xpos = 0;
  ypos = 0;
  xSpeed = 5;
  ySpeed = 5;
  xAcel = 0;
  yAcel = 0;
}

void draw ()
{
  background (255);
  
  xSpeed = xSpeed * 0.99;
  ySpeed = ySpeed * 0.99;
  xAcel = xAcel * 0.99;
  yAcel = yAcel * 0.99;
  
  if (xSpeed > 5)
  {
    xSpeed = 5;
  }
  
  if (xSpeed < -5)
  {
    xSpeed = -5;
  }
  
  if (ySpeed > 5)
  {
    ySpeed = 5;
  }
  if (ySpeed < -5)
  {
    ySpeed = -5;
  }

  if (xpos > width)
  {
    xSpeed *= -1;
  }
  
  if (ypos > height)
  {
    ySpeed *= -1;
  }
  
  if (xpos < 0)
  {
    xSpeed *= -1;
  }
  
  if (ypos < 0)
  {
    ySpeed *= -1;
  }
  
  xpos+= xSpeed;
  xSpeed+= xAcel;
  ypos+= ySpeed;
  ySpeed+= yAcel;
  ellipse(xpos, ypos, 50, 50);
}

void mousePressed ()
{
  fill(random(255), random(255), random(255), 100);
}

void keyPressed ()
{
  if (keyCode == LEFT)
  {
    xAcel -= 0.01;
  }
  else if (keyCode == RIGHT)
  {
    xAcel += 0.01;
  }
  else if (keyCode == UP)
  {
    yAcel -= 0.01;
  }
  else if (keyCode == DOWN)
  {
    yAcel += 0.01;
  }
}
