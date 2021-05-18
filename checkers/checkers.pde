int squareSize = 20;
PVector previousCoordinate;
int amountHorizontal;
int amountVertical;

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
  
  amountHorizontal = width/squareSize;
  amountVertical = height/squareSize;

  createGrid(squareSize);
  drawWhiteSquare(getRandomPoint(squareSize), squareSize);
}

void createGrid(int squareSize){
  for (int y = 0; y < amountVertical; y++){
    for (int x = 0; x < amountHorizontal; x++){
      square(x*squareSize, y*squareSize, squareSize);
    }
  }
}

PVector getRandomPoint(int squareSize){
  int totalAmount = squareSize * squareSize;
  PVector randomPoint = new PVector(int(random(width/squareSize)), int(random(height/squareSize)));
  previousCoordinate = randomPoint;
  return randomPoint;
}

int randomDirection(){
  int randint = int(random(4));
  return randint;
}

boolean checkCoordinate(PVector coordinateToCheck){
  if (coordinateToCheck.x > amountHorizontal || coordinateToCheck.x < 0){
    return false;
  }
  if (coordinateToCheck.y > amountVertical || coordinateToCheck.y < 0){
    return false;
  }
  return true;
}

PVector nextCoordinate(PVector prevCoordinate, int squareSize){
  int direction = randomDirection();
    
  if (direction == 0){
    PVector nextCoordinate = new PVector(prevCoordinate.x, prevCoordinate.y+1);
    if (checkCoordinate(nextCoordinate)){
       previousCoordinate = nextCoordinate;
       return nextCoordinate;
    }
  }
  if (direction == 1){
    PVector nextCoordinate = new PVector(prevCoordinate.x+1, prevCoordinate.y);
    if (checkCoordinate(nextCoordinate)){
       previousCoordinate = nextCoordinate;
       return nextCoordinate;
    }
  }
  if (direction == 2){
    PVector nextCoordinate = new PVector(prevCoordinate.x, prevCoordinate.y-1);
    if (checkCoordinate(nextCoordinate)){
       previousCoordinate = nextCoordinate;
       return nextCoordinate;
    }
  }
  if (direction == 3){
    PVector nextCoordinate = new PVector(prevCoordinate.x-1, prevCoordinate.y);
    if (checkCoordinate(nextCoordinate)){
       previousCoordinate = nextCoordinate;
       return nextCoordinate;
    }
  }
  
  return prevCoordinate;
}

void drawWhiteSquare(PVector point, int squareSize){
  fill(255);
  square(point.x*squareSize, point.y*squareSize, squareSize);
}

void draw(){
  drawWhiteSquare(nextCoordinate(previousCoordinate, squareSize), squareSize);
}
