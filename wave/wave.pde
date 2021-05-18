int amountOfStripes = 6000;
int lineLengthMin = 3;
int lineLengthMax = 20;

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
  noLoop();
}

void draw() {
  background(0);
  for (int x = 0; x < amountOfStripes; x++) {
    int lineLength = int(random(lineLengthMin, lineLengthMax));
    int randomX = int(random(1,1000));
    int randomY = int(random(1,1000));
    float angleX = ((randomX-randomY)/float(width) - 0.5) * -PI;
    line(randomX, randomY, randomX+(lineLength*sin(angleX)), randomY+(lineLength*cos(angleX)));
  }
}
