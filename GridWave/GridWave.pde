int amountOfStripes = 4000;
int lineLengthMin = 3;
int lineLengthMax = 50;

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
  noLoop();
}

void draw() {
  PImage img[];
  img = new PImage[100];
  
  for (int y = 0; y < 10; y++){
    for (int x = 0; x < 10; x++){
      fillCanvasWithStripes();
      img[x+y*10] = get(100*x,100*y,100,100);
      background(0);
    }
  }
  
  for (int y = 0; y < 10; y++){
    for (int x = 0; x < 10; x++){
      image(img[x+y*10], x*100, y*100, 98, 98);
    }
  }
}

void fillCanvasWithStripes(){
    for (int x = 0; x < amountOfStripes; x++) {
    int lineLength = int(random(lineLengthMin, lineLengthMax));
    float randomX = 500 + (random(1,400)-random(1,400));
    float randomY = 500 + (random(1,400)-random(1,400));
    float angleX = ((randomX-randomY)/float(width)) * PI;
    line(randomX, randomY, randomX+(lineLength*sin(angleX)), randomY+(lineLength*cos(angleX)));
  }
}
