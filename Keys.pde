void keyPressed()
{
  if(key == 'a')
  {
    p1left = true;
  }
  if(key == 'd')
  {
    p1right = true;
  }
  if(key == 'w')
  {
    p1jump = true;
  }
  if(key == CODED)
  {
    if(keyCode == LEFT)
    {
      p2left = true;
    }
    if(keyCode == RIGHT)
    {
      p2right = true;
    }
    if(keyCode == UP)
    {
      p2jump = true;
    }
  }
}

void keyReleased()
{
  if(key == 'a')
  {
    p1left = false;
  }
  if(key == 'd')
  {
    p1right = false;
  }
  if(key == 'w')
  {
    p1jump = false;
  }
  if(key == 's')
  {
    int sp = bspeed;
    PImage b = b1right;
    int startx = p1x + psize/2 + bwid;
    if(p1 == p1lefti)
    {
      sp *= -1;
      b = b1left;
      startx = p1x - psize/2 - bwid;
    }
    blist.add(new Bullet(sp, startx, p1y, b));
  }
  
  if(key == CODED)
  {
    if(keyCode == LEFT)
    {
      p2left = false;
    }
    if(keyCode == RIGHT)
    {
      p2right = false;
    }
    if(keyCode == UP)
    {
      p2jump = false;
    }
    if(keyCode == DOWN)
    {
      int sp = bspeed;
      PImage b = b2right;
      int startx = p2x + psize/2 + bwid;
      if(p2 == p2lefti)
      {
        sp *= -1;
        b = b2left;
        startx = p2x - psize/2 - bwid;
      }
      blist.add(new Bullet(sp, startx, p2y, b));
    }
  }
}