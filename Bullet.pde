class Bullet
{
  int spdir;
  int x;
  int y;
  PImage b;
  public Bullet(int _spdir, int startx, int starty, PImage _b)
  {
    spdir = _spdir;
    x = startx;
    y = starty;
    b = _b;
  }
  void display()
  {
    image(b,x,y);
    x += spdir;
  }
}

void dispBullets()
{
  ArrayList<Bullet> remList = new ArrayList<Bullet>();
  for(Bullet b: blist)
  {
    b.display();
    if(b.x < -60 || b.x > width + 60)
    {
      remList.add(b);
    }
  }
  for(Bullet b: remList)
  {
    blist.remove(b);
  }
}