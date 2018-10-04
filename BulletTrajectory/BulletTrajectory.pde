float r = 10;

float x0=0;
float y0=0;

float y;
float x;

float alpha = PI/4;
float v0=5;
float v0x=v0*cos(alpha);
float v0y =v0*sin(alpha);
float t0= millis() * 0.001;
float t;
float g = 0.6;

void setup(){
size(800,800);

y=y0;
x=x0;

}

void draw(){
background(0);


fill(255);
ellipse(x,y+height,r,r);
t = millis()*0.001-t0;
t0=t;
x=x+(v0x*t);
//y= y-((1/2)*g*t*t)+(v0y*t);

float p1 = -((g*x*x)/(2*v0x*v0x));
float p2 = (((g*x0)/(v0x*v0x))+(v0y/v0x))*x;
float p3 = -((g*x0*x0)/(2*v0x*v0x))-(x0*(v0y/v0x));
y=y-(p1+p2+p3);
println("x: "+x+" y: "+y);


}
