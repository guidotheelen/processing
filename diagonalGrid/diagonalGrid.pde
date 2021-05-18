int amountOfstripes = 10000;

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
  noLoop();
}

void draw() {
  background(0);
  for (int x = 0; x < amountOfstripes; x++){
    float X1cor = abs(random(0,1000)-random(0,1000));
    float Y1cor = abs(random(0,1000)-random(0,1000));
    float lineLength = 20;
    line(X1cor, Y1cor, X1cor+lineLength, Y1cor+lineLength);
  }
  
  saveFrame();
}
