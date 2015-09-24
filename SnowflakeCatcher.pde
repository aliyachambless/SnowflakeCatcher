Snowflake [] flurry;
int iniX;
int iniY;
void setup()
{
  //your code here
  size(300,300);
  background(24, 27, 186);
  flurry = new Snowflake[200];
  for(int i = 0; i < 200; i++){
    flurry[i] = new Snowflake();
  }
}
void draw()
{
  for(int i = 0; i < 200; i++){
    flurry[i].erase();
    flurry[i].lookDown();
    flurry[i].move();
    flurry[i].wrap();
    flurry[i].show();
  }
}
void mouseDragged()
{
  //your code here
  iniX = mouseX;
  iniY = mouseY;
  stroke(30);
  strokeWeight(20);
  line(mouseX,mouseY,pmouseX,pmouseY);
}

class Snowflake
{
  //class member variable declarations
  int x, y;
  Boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255);
    noStroke();
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if(y >= 0 && y <= 305 && get(x,y+3) == color(24, 27, 186)){
      isMoving = true;
    }
    else {
      isMoving = false;
    }
  }
  void erase()
  {
    if(isMoving){
     fill(24, 27, 186);
     noStroke();
     ellipse(x,y,7,7);
    }
  }
  void move()
  {
    if(isMoving)
      y += 3;
  }
  void wrap()
  {
    //your code here
    if(y >= 296){
      y = 0;
      x = (int)(Math.random()*300);
      isMoving = true;
    }
  }
}
void keyPressed() 
{
  if(keyCode == 32){
    for(int i = 0; i < 200; i++){
      flurry[i] = new Snowflake();
    }
  }
  if(keyCode == 68){
    background(24, 27, 186);
  }
}

