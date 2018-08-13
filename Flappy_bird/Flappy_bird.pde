void setup()
{
size(800,600);

}
int x = 50;
int y= 50;
int birdYVelocity = 30;
int gravity = 1;
void draw()
{
 
background(0,0,250); 
fill(0,250,0);
stroke(250,0,0);
ellipse(x, y, 40, 20);

y+=gravity;
}