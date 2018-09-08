float r =200;

int total;
int circle;

void setup(){
  size(405,405);
  background(0);
  translate (width/2,height/2);
  
  stroke(255);
  strokeWeight(4);
  noFill();
  
  rectMode(CENTER);
  rect(0,0,r*2,r*2);
  ellipse(0,0,r*2,r*2);
}

void draw(){
  translate (width/2,height/2);
  
  for(int i =0; i<=100000; i++){
    float x = random(-r,r);
    float y = random(-r,r);
  
    total++;
    float d = dist(0,0,x,y);
  
    if (d<r){
      stroke(0,255,0);
      circle++;
    }else{
      stroke(0,0,255);
    }
    point(x,y);
  }
  
  double pi = 4* ((double)circle /(float)total);
  println(pi);
}
