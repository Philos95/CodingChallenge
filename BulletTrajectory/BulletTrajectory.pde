float r = 10;

float x0=0;
float y0=0;

float y;
float x;

float alpha = PI/4;
float v0=1;
float v0x=v0*cos(alpha);
float v0y =v0*sin(alpha);
float t0= millis()*0.01;
float t;

void setup(){
size(800,800);

y=y0;
x=x0;

}

void draw(){
background(0);


fill(255);
ellipse(x,y+height,r,r);
t = millis()*0.01-t0;
t0=t;
x=x+(v0x*t);
y=y - (1/2*t*t*0.1)-v0y*t;

}
