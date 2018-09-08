class Line{
 
 float len;
 float x;
 
 Line (float len,float x){
   this.len = len;
   this.x = x;
 }
 
 void show(){
   
   stroke(0);
   strokeWeight(2);
   line(x,height,x,height-len);
 
 }
  
  
}
