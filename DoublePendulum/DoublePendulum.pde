float x1=0;
float y1=0;
float alpha=0;
float ropelength=50;
float x2 = x1+ ropelength*cos(alpha);
float y2 = y1+ropelength*sin(alpha);



void setup(){
  size (800,800);
  

}
void  move(){
  alpha=alpha+0.05;
   x2 = x1+ ropelength*cos(alpha);
   y2 = y1+ropelength*sin(alpha);
}

void draw(){
  move();
  background(255);
  strokeWeight(2);
  translate(height/2,width/2);
  line(x1,y1,x2,y2);
  println(x2,y2);


}
