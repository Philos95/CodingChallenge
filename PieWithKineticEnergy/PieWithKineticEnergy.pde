float space = 20;

boolean speedUp =false;

float M2= 10;


Box b1 = new Box(1,0,60+space,20);
Box b2 = new Box(pow(100,M2),-1,80+space,40);
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
  if (speedUp){
    for(int j=0;j<b2.m;j++){
        b1.show();
        b1.move();
        b2.show();
        b2.move();
        cc.checkCollision();
    } 
  }
    else{
        b1.show();
        b1.move();
        b2.show();
        b2.move();
        cc.checkCollision();
    
    }
  
}


void mousePressed(){
  speedUp = true;

}
void mouseReleased(){
  speedUp = false;
}
