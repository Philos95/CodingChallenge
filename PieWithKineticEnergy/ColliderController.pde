class ColliderController{
  Box b1,b2;
  float wall;
  
  ColliderController (Box b1, Box b2,float wall){
    this.b1 = b1;
    this.b2 = b2;
    this.wall = wall;
  }
  
  void checkCollision(){
    if(b1.x+b1.size >= b2.x)
    {
      b1.x =b2.x-b1.size;
      b1.v=-b1.v;
    }
    wallCollision(b1);
    wallCollision(b2);
    
   
  }
  
 
  
  void wallCollision(Box b){
  
  if(b.x <=wall){
      b.x =wall;
      b.v=-b.v;
    }
  
  }


}
