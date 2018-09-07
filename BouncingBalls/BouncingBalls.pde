//tesdt//

float currentSize=0;


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
  
}


void newBall(float s){
  Ball b = new Ball(mouseX,mouseY,s);
  b.show();
}
