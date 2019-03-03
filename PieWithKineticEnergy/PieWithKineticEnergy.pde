float space = 20;


Box b1 = new Box(1,-5,60+space,20);
Box b2 = new Box(1,-0.5,200+space,40);
ColliderController cc = new ColliderController(b1,b2,space);





void setup(){
  size (1200,400);
  background(0);
}

void draw(){
  background(0);
  strokeWeight(2);
  stroke(255);
  line (space,400,space,-10);
  for(int i =0; i<height/space; i++){
    line(0,space*(i+1),space,space*i);
  }
  
  b1.show();
  b1.move();
  b2.show();
  b2.move();
  cc.checkCollision();
}
