void setup() {
  size(1000, 1000);
  stroke(0);
  fill(0);
  background(255);
}

void draw() {
  for (int o = 0; o < 8; o++) {
    for (int y = 0; y < 10; y++) {
      for (int x = 0; x < 10; x++) {
        int dotsPerSquare = 100;
        for (int t = 0; t < dotsPerSquare; t++) {
          circle(abs(random(100)-random(100))+100*x, abs(random(100)-random(100))+100*y, 1);
          //switch(o) {
          //  case 0:
          //    circle(abs(random(100)-random(100))+100*x, abs(random(100)-random(100))+100*y, 1); //left top
          //    break;
            
          //  case 1:
          //    circle(abs(random(100))+100*x, abs(random(100)-random(100))+100*y, 1);
          //    break;
             
          //  case 2:
          //    circle(100+x-abs(random(100)-random(100))+100*x, abs(random(100)-random(100))+100*y, 1);
          //    break;
            
          //  case 3:
          //    circle(100+x-abs(random(100)-random(100))+100*x, random(100)+100*y, 1);
          //    break;
            
          //  case 4:
          //    circle(100+x-abs(random(100)-random(100))+100*x, 100+y-abs(random(100)-random(100))+100*y, 1);
          //    break;
            
          //  case 5:
          //    circle(random(100)+100*x, 100+y-abs(random(100)-random(100))+100*y, 1);
          //    break;
            
          //  case 6:
          //    circle(abs(random(100)-random(100))+100*x, 100+y-abs(random(100)-random(100))+100*y, 1);
          //    break;
            
          //  case 7:
          //    circle(abs(random(100)-random(100))+100*x, abs(random(100))+100*y, 1);
          //    o = 0;
          //    break;
          //}
          //saveFrame();
          //background (255); // clear screen every frame
        }
      }
    }
  }
}
