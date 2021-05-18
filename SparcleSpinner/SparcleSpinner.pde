int amountOfDots = 5000;
int R = 300;
int round = 0;

float[] positionX = new float[5000];
float[] positionY = new float[5000];
float[] extraX = new float[5000];
float[] extraY = new float[5000];
float[] angle = new float[5000];

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
  noLoop();
  
  for (int x = 0; x < amountOfDots; x++){
    float angle = x*0.1;
    float radius = R;
    
    float Xcor = 500 + radius * sin(angle);
    float Ycor = 500 + radius * cos(angle);
    
    positionX[x] = Xcor;
    positionY[x] = Ycor;
  }
}

void draw() {
  background(0);
  
  float Xcor = positionX[round];
  float Ycor = positionY[round];
  
  point(Xcor, Ycor);
  
  round += 1;
  
  if (round == amountOfDots){
    round = 0;
  }
  
  //PImage img = loadImage("gold.jpg");
  //blendMode(DARKEST);
  //image(img, 0, 0);
  //blendMode(ADD);
  
  //saveFrame();
}
