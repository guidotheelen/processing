int amountOfStripes = 10000;
int lineLengthMin = 3;
int lineLengthMax = 30;

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
  noLoop();
}

void draw() {
  for (int x = 0; x < amountOfStripes; x++) {
    int lineLength = int(random(lineLengthMin, lineLengthMax));
    float randomX = 500 + (random(1,500)-random(1,500));
    float randomY = 500 + (random(1,500)-random(1,500));
    float angleX = ((randomX-randomY)/float(width)) * PI;
    line(randomX, randomY, randomX+(lineLength*sin(angleX)), randomY+(lineLength*cos(angleX)));
  }
}
