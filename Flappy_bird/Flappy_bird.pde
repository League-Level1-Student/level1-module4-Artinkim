void setup()
{
size(800,600);
teleportPipes();
}
int x = 100;
int y= 100;
int birdYVelocity = 40;
int gravity = 4;
int px = 800;
int ph = 200;
int py = 0;
int py2= 0;
int score;
boolean passed = true;
void draw()
{
 
background(0,0,250); 
fill(0,250,0);
stroke(250,0,0);
ellipse(x, y, 40, 20);
rect(0,580,800,20);
text(score, 500, 20);
teleportPipes();
y+=gravity;
if(intersectsPipes())
{
x = 100;
y = 100;
score = 0;
px = 800;
}
if(passed && x>px)
{
  score++;
  passed = false;
}
}

void mousePressed()
{
 y-= birdYVelocity;
}

void teleportPipes()
{
fill(0,255,0);
rect(px, py, 50, ph);  
fill(0,255,0);
py2 = py + ph + 200;
rect(px, py2, 50, 600); 
px-=5;
if(px<0)
{
  passed = true;
ph = (int) random(100, 400);
px = 800;
}
}


boolean intersectsPipes() { 
     if (y < ph && x > px && x < (px+50)){
          return true; }
     else if (y>py2 && x > px && x < (px+20)) {
          return true; }
     else if (y>600){
       return true;}
     
     else { return false; }
}