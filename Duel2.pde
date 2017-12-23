//Variables

int bspeed;
int pspeed;
int psize;
int bwid;
int bht;
int p1yspeed = 0;
int p2yspeed = 0;
int gravity = 1;
int p1x;
int p1y;
int p2x;
int p2y;
PImage p1;
PImage p1lefti;
PImage p1righti;
PImage p2;
PImage p2lefti;
PImage p2righti;
PImage b1right;
PImage b2left;
PImage b1left;
PImage b2right;
PImage bg;
boolean p1right = false;
boolean p1left = false;
boolean p1jump = false;
boolean p2right = false;
boolean p2left = false;
boolean p2jump = false;
ArrayList<Platform> platList = new ArrayList<Platform>();
ArrayList<Bullet> blist = new ArrayList<Bullet>();
boolean p1on = false;
boolean p2on  = false;
int lives1;
int lives2;

void setup()
{
  size(1000,600);
  rectMode(CENTER);
  imageMode(CENTER);
  lives1 = 3;
  lives2 = 3;
  p1lefti = loadImage("p1left.png");
  p1righti = loadImage("p1.png");
  p2lefti = loadImage("p2.png");
  p2righti = loadImage("p2right.png");
  b1right = loadImage("bullet.png");
  b2left = loadImage("bullet1.png");
  b2right = loadImage("bullet1 copy.png");
  b1left = loadImage("bullet copy.png");
  bwid = 30;
  bht = 10;
  b1right.resize(bwid,bht);
  b2left.resize(bwid,bht);
  b1left.resize(bwid,bht);
  b2right.resize(bwid,bht);
  
  psize = 40;

  p1lefti.resize(psize, psize);
  p1righti.resize(psize, psize);
  p2lefti.resize(psize, psize);
  p2righti.resize(psize, psize);
  
  p1 = p1righti;
  p2 = p2lefti;
  
  bg = loadImage("dojo.jpg");
  bg.resize(width, height);
  bspeed = 6;
  pspeed = 4; 
  p1x = 100;
  p1y = 450;
  p2x = 900;
  p2y = 450;
  int numPlat = 15;
  new Platform(width/2, height - 100, width, 50);
  for (int i = 2; i < numPlat; i++)
  {
    int y2 = height - i * (height/numPlat);
    for (int j = 0; j < int(random(1,4)); j++)
    {
      int x2 = int(random(0,width/8))*8;
      new Platform(x2, y2, 100, 20);
    }
  }
}

void draw()
{
  background(bg);
  image(p1, p1x, p1y);
  image(p2, p2x, p2y);
  for(Platform p : platList)
  {
    p.app();
  }
  movePlayers();
  gravity();
  dispBullets();
  hitDetect();
  showScores();
}

void showScores()
{
  textSize(50);
  text(str(lives1), 100, 100);
  text(str(lives2), width-100, 100);
}