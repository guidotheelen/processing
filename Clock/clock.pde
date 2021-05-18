int lineLength = 25;

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
  noLoop();
}

void draw() {
  background(0);
  for (int x = 0; x < 10; x++) {
    int xPosition = x * 100;
    int yPosition = 500;
    float angle = (xPosition/float(width) - 0.5) * -PI;
    line(xPosition, yPosition, xPosition+(lineLength*sin(angle)), yPosition+(lineLength*cos(angle)));
  }
}
