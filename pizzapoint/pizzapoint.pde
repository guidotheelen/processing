int amountOfDots = 10000;
int R = 400;
float round = 1;
float sinus = sin(round);

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
}

void draw() {
  background(0);
  for (int x = 0; x < amountOfDots; x++){
    float angle = random(0.1) * TWO_PI;
    float radius = R * sqrt(random(1));
    radius = radius * sinus;
    
    float Xcor = 500 + radius * cos(angle);
    float Ycor = 500 + radius * sin(angle);
    point(Xcor, Ycor);
  }
  
  round += 0.02;
  sinus = sin(round);
}
