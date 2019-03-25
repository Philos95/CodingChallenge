class Point{
float x;
float y;
float c;

  Point(float x,float y){
    this.x=x;
    this.y=y;
  }
  
  void show(){
    stroke(255);
    strokeWeight(0.8);
    point(this.x,this.y);
  }

}
