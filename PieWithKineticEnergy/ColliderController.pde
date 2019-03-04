class ColliderController{
  Box b1,b2;
  float wall;
  int count;
  float vi1;
  
  ColliderController (Box b1, Box b2,float wall){
    this.b1 = b1;
    this.b2 = b2;
    this.wall = wall;
  }
  
  void checkCollision(){
    if(b1.x+b1.size >= b2.x)
    {
      count++;
      b1.x =b2.x-b1.size;
      if(b2.x < b1.size+wall){
        b2.x = b1.size + wall;
      }
      vi1=b1.v; 
      b1.v=((b1.m-b2.m)/(b1.m+b2.m)*b1.v) + ((2*b2.m)/(b1.m+b2.m) *b2.v);
      b2.v= ((b2.m-b1.m)/(b2.m+b1.m) *b2.v) + ((2*b1.m)/(b1.m+b2.m)* vi1);
      
      println(count);
    }
    wallCollision(b1);
    wallCollision(b2);
    
   
  }
  
 
  
  void wallCollision(Box b){
  
  if(b.x <=wall){
      count++;
      b.x =wall;
      b.v=-b.v;
      println(count);
    }
  
  }


}
