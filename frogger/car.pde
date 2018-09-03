class Car
{
  int x;
  int y;
  int s;
  int d;

  void display() 
  {
    fill(0, 0, 255);
    rect(x, y, s, 50);
  }
  void move()
  {
    x+=d;
    if (x<0)
    {
      x=400;
    }
    if (x>400)
    {
      x=0;
    }
  }
  Car(int a, int b, int c,int d)
  {
    x = a;
    y = b;
    s = c;
    this.d = d;
  }
  int getY()
  {
    return this.y;
  }
  int getX()
  {
    return this.x;
  }
  int getSize()
  {
    return this.s;
  }
  
  boolean intersects(Car car) {
    if ((by> car.getY() && by < car.getY()+50) && (bx > car.getX() && bx < car.getX()+car.getSize()))
    {
      return true;
    } else 
    {
      return false;
    }
  }
}