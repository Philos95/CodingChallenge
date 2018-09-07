
float currentSize=0;

ArrayList<Ball> balls = new ArrayList<Ball>();


void setup(){
  size (400,400);
  background(255);
}

void mousePressed(){
  currentSize = millis();
}

void mouseReleased(){
  currentSize = millis()-currentSize;
  
  if (currentSize >3000)
    currentSize = 3000;
    
  float size = map(currentSize,0,3000,1,300);
  newBall(size);
  
  println(currentSize);

}

void mouseDragged(){
 //newBall();
}

void draw(){
   background(255);
 for(Ball b : balls){
   b.fall();
   b.show();
 }
}


void newBall(float s){
    float R = random(0,255);
    float G = random(0,255);
    float B = random(0,255);
    color c = color(R,G,B);
  Ball b = new Ball(mouseX,mouseY,s,c);

  balls.add(b);
}
