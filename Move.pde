void movePlayers()
{
  if(p1left && p1x > psize/2)
  {
    p1x -= pspeed;
    p1 = p1lefti;
  }
  if(p1right && p1x < width - psize/2)
  {
    p1x += pspeed;
    p1 = p1righti;
  }
  if(p2left && p2x > psize/2)
  {
    p2x -= pspeed;
    p2 = p2lefti;
  }
  if(p2right && p2x < width - psize/2)
  {
    p2x += pspeed;
    p2 = p2righti;
  }
  if(p1jump && p1on && p1yspeed == 0)
  {
    p1yspeed -= 15;
  }
  if(p2jump && p2on && p2yspeed == 0)
  {
    p2yspeed -= 15;
  }
  //Move by y speeds
  p1y += p1yspeed;
  p2y += p2yspeed;
}