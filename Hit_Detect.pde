void hitDetect()
{
  boolean hit = false;
  for(Bullet b: blist)
  {
    if(b.x + bwid/2 >= p1x - psize/2
    && b.x - bwid/2 <= p1x + psize/2
    && b.y + bht/2 <= p1y + psize/2
    && b.y - bht/2 >= p1y - psize/2)
    {
      lives1--;
      p1x = 100;
      p1y = 450;
      p2x = 900;
      p2y = 450;
      hit = true;
    }
    if(b.x + bwid/2 >= p2x - psize/2
    && b.x - bwid/2 <= p2x + psize/2
    && b.y + bht/2 <= p2y + psize/2
    && b.y - bht/2 >= p2y - psize/2)
    {
      lives2--;
      p1x = 100;
      p1y = 450;
      p2x = 900;
      p2y = 450;
      hit = true;
    }
  }
  if(hit)
  {
    blist = new ArrayList<Bullet>();
  }
}