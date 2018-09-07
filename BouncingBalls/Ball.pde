class Ball{
  float x;
  float y;
  float size;
  float speed;
  
  Ball(float x, float y,float size){
    this.x = x;
    this.y = y;
    this.size=size;
  }

  void show(){
     float R = random(0,255);
     float G = random(0,255);
     float B = random(0,255);
    
    
    fill(R,G,B);
    stroke(R,G,B);
    ellipse(x,y,size,size);
  }

}
