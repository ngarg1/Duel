void gravity()
{
  p1on = false;
  p2on = false;
  int new1y = p1y;
  int new2y = p2y;
  for(Platform p: platList)
  {
    if(p1y + psize/2 >= p.y - p.ht/2
    && p1y + psize/2 <= p.y + p.ht/2
    && p1x >= p.x - p.wd/2
    && p1x <= p.x + p.wd/2)
    {
      p1on = true;
      new1y = p.y - p.ht/2;
    }
    if(p2y + psize/2 >= p.y - p.ht/2
    && p2y + psize/2 <= p.y + p.ht/2
    && p2x >= p.x - p.wd/2
    && p2x <= p.x + p.wd/2)
    {
      p2on = true;
      new2y = p.y - p.ht/2;
    }
  }
  if(p1on && p1yspeed >=0)
  {
    p1yspeed = 0;
    p1y = new1y - psize/2;
  }
  else
  {
    p1yspeed += gravity;
   
  }
  if(p2on && p2yspeed >= 0)
  {
    p2yspeed = 0;
    p2y = new2y - psize/2;
  }
  else
  {
    p2yspeed += gravity;
  }
}