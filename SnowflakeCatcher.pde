void setup()
{
  //your code here
  size(400,400);
}
void draw()
{
  background(24, 27, 186);
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  //class member variable declarations
  int x, y;
  Boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int))(Math.random()*400);
    y = (int))(Math.random()*400);
    isMoving = true;
  }
  void show()
  {
    //your code here
  }
  void lookDown()
  {
    //your code here
  }
  void erase()
  {
     fill(24,27,186);
     ellipse(x,y,7,7);
  }
  void move()
  {
    if(isMoving)
      y += 1;
  }
  void wrap()
  {
    //your code here
  }
}


