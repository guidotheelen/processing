int amountOfRows = 4;
int drawHeight = 350;

ArrayList<PVector> coordinateList;

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(255);
  background(0);
  noLoop();
}

void draw() {
  background(0);
  
  int cellSize = drawHeight/amountOfRows;
  float startX = width/2 - drawHeight/2;
  float startY = height/2 - drawHeight;
  
  for (int x = 0; x < amountOfRows/2; x++){
    for (int y = 0; y < amountOfRows; y++){
      int randomRotate = Math.round(random(4));
      float opositeSide = amountOfRows * cellSize - cellSize * x;
      float opositeSideY = amountOfRows * cellSize - cellSize * y;

      switch(randomRotate) {
        case 1:
          arc(startX+cellSize*x, startY+cellSize*y, cellSize*2, cellSize*2, 0, HALF_PI);
          arc(startX+opositeSide, startY+cellSize*y, cellSize*2, cellSize*2, HALF_PI, PI);
          arc(startX+cellSize*x, startY+cellSize*(y+1)+opositeSideY*2-cellSize, cellSize*2, cellSize*2, PI+HALF_PI, TWO_PI);
          arc(startX+opositeSide, startY+cellSize*(y+1)+opositeSideY*2-cellSize, cellSize*2, cellSize*2, PI, PI+HALF_PI);
          break;
        case 2:
          arc(startX+cellSize*(x+1), startY+cellSize*y, cellSize*2, cellSize*2, HALF_PI, PI);
          arc(startX+opositeSide-cellSize, startY+cellSize*y, cellSize*2, cellSize*2, 0, HALF_PI);
          arc(startX+cellSize*(x+1), startY+cellSize*(y+1)+opositeSideY*2-cellSize, cellSize*2, cellSize*2, PI, PI+HALF_PI);
          arc(startX+opositeSide-cellSize, startY+cellSize*(y+1)+opositeSideY*2-cellSize, cellSize*2, cellSize*2, PI+HALF_PI, TWO_PI);
          break;
        case 3:
          arc(startX+cellSize*(x+1), startY+cellSize*(y+1), cellSize*2, cellSize*2, PI, PI+HALF_PI);
          arc(startX+opositeSide-cellSize, startY+cellSize*(y+1), cellSize*2, cellSize*2, PI+HALF_PI, TWO_PI);
          arc(startX+cellSize*(x+1), startY+cellSize*y+opositeSideY*2-cellSize, cellSize*2, cellSize*2, HALF_PI, PI);
          arc(startX+opositeSide-cellSize, startY+cellSize*y+opositeSideY*2-cellSize, cellSize*2, cellSize*2, 0, HALF_PI);
          break;
        case 4:
          arc(startX+cellSize*x, startY+cellSize*(y+1), cellSize*2, cellSize*2, PI+HALF_PI, TWO_PI);
          arc(startX+opositeSide, startY+cellSize*(y+1), cellSize*2, cellSize*2, PI, PI+HALF_PI);
          arc(startX+cellSize*x, startY+cellSize*y+opositeSideY*2-cellSize, cellSize*2, cellSize*2, 0, HALF_PI);
          arc(startX+opositeSide, startY+cellSize*y+opositeSideY*2-cellSize, cellSize*2, cellSize*2, HALF_PI, PI);
          break;
        default:
          ellipse((startX+cellSize*x)+cellSize/2, (startY+cellSize*y)+cellSize/2, cellSize, cellSize);
          ellipse((startX+opositeSide)-cellSize+cellSize/2, (startY+cellSize*y)+cellSize/2, cellSize, cellSize);
          
          ellipse((startX+cellSize*x)+cellSize/2, (startY+cellSize*y)+cellSize/2+opositeSideY*2-cellSize, cellSize, cellSize);
          ellipse((startX+opositeSide)-cellSize+cellSize/2, (startY+cellSize*y)+cellSize/2+opositeSideY*2-cellSize, cellSize, cellSize);
      }
    }
  }
  
  
  PImage img = loadImage("gold.jpg");
  blendMode(DARKEST);
  image(img, 0, 0);
  blendMode(ADD);
  
  saveFrame();
}
