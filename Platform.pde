class Platform
{
  int x;
  int y;
  int wd; 
  int ht;
  public Platform(int _x, int _y, int _wd, int _ht)
  {
    x = _x;
    y = _y;
    wd = _wd;
    ht = _ht;
    fill(#36FFFA);
    rect(x, y, wd, ht);
    platList.add(this);
  }

  void app()
  {
    rect(x, y, wd, ht);
  }
}