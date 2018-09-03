void setup()
{
  size(400, 400);
}
Car c1 = new Car(400, 20, 30,5);
Car c2 = new Car(400, 100, 20,-5);
Car c3 = new Car(400, 200, 30,5);
int bx = 50;
int by = 0;
int h = 10;
void draw()
{
  background(0, 250, 0);
  fill(250, 0, 0);
  ellipse(bx, by, 40, 40);
  border();
  c1.display();
  c2.display();
  c3.display();
  c1.move();
  c2.move();
  c3.move();
  if(c1.intersects(c1) == true)
  {
  bx = 50;
  by = 0;
  }
  if(c2.intersects(c2) == true)
  {
  bx = 50;
  by = 0;
  }
  if(c3.intersects(c3) == true)
  {
  bx = 50;
  by = 0;
  }
  
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      by-=h;
    } else if (keyCode == DOWN)
    {
      by+=h;
    } else if (keyCode == RIGHT)
    {
      bx+=h;
    } else if (keyCode == LEFT)
    {
      bx-=h;
    }
  }
}

void border()
{
  if (bx>400)
  {
    bx-=h;
  }
  if (by>400)
  {
    by-=h;
  }
  if (bx<0)
  {
    bx+=h;
  }
  if (by<0)
  {
    by+=h;
  }
}