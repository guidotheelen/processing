int amountOfStripes = 6000;
int lineLengthMin = 20;
int lineLengthMax = 20;

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
    int randomX = int(random(1,1000));
    int randomY = int(random(1,1000));
    float angleX = (randomX/lineLength) * PI;
    float angleY = (randomY/lineLength) * PI;
    line(randomX, randomY, randomX+lineLength*cos(angleX), randomY+lineLength*cos(angleY));
  }
}
