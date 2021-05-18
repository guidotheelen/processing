int lineLength = 250;

void setup() {
  size(1000, 1000);
  stroke(255);
  fill(0);
  background(0);
  noLoop();
}

void draw() {
  background(0);
  
  PVector p0 = new PVector(width/2, height/2);
  
  //line(p0.x, p0.y, p0.x, p0.y-lineLength);
  //line(p0.x, p0.y, p0.x+lineLength-(lineLength*cos(30)), p0.y+lineLength/2);
  //line(p0.x, p0.y, p0.x+lineLength/2, p0.y-lineLength-(lineLength*cos(30)));
  
  line(p0.x, p0.y, p0.x+lineLength-(lineLength*cos(30)), p0.y);
  line(p0.x, p0.y, p0.x+lineLength-(lineLength*cos(30)), p0.y-lineLength);
  
  //for (int i = 0; i < 30; i++){
  //  line(p0.x, p0.y, p0.x+lineLength-(lineLength*cos(i)), p0.y-lineLength+(lineLength*cos(i)));
  //}
   
  
  //PImage img = loadImage("gold.jpg");
  //blendMode(DARKEST);
  //image(img, 0, 0);
  //blendMode(ADD);
  
  //saveFrame();
}
