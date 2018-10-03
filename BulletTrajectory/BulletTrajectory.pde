float r = 10;
float y=0;
float x=0;
float v0=10;

void setup(){
size(1200,800);


}

void draw(){
x=x+v0;
y=y+v0;
background(0);
  
stroke(255);
ellipse(x,y-height,r,r);

}
