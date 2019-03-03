class Box{
  float m;
  float v;
  float x;
  float size;
  
  
  
  Box(float m,float v, float x, float size)
  {
    this.m =m;
    this.x=x;
    this.v=v;
    this.size=size;
  }
  
  void move(){
    this.x = this.x+ this.v;
   
  }
  
  void show()
  {
   stroke(255);
   strokeWeight(1);
   rect(x,height-size,size,size);
  }

}
