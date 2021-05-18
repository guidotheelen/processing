int amountOfDots = 50000;
int R = 300;
float extraAngle = 0;

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
}

void draw() {
  background(0);
  for (int x = 0; x < amountOfDots; x++){
    float angle = abs(random(PI)-random(PI))+extraAngle;
    float radius = R * sqrt(random(1));
    
    float Xcor = 500 + radius * sin(angle);
    float Ycor = 500 + radius * cos(angle);
    point(Xcor, Ycor);
  }
  
  for (int x = 0; x < amountOfDots; x++){
    float angle = abs(random(PI)-random(PI))+PI+extraAngle;
    float radius = R * sqrt(random(1));
    
    float Xcor = 500 + radius * sin(angle);
    float Ycor = 500 + radius * cos(angle);
    point(Xcor, Ycor);
  }
  extraAngle-=0.01;
  
  PImage img = loadImage("gold.jpg");
  blendMode(DARKEST);
  image(img, 0, 0);
  blendMode(ADD);
  
  saveFrame();
}
