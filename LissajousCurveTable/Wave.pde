class Wave{
 Circle hc;
 Circle vc;
 float x;
 float y;
 
 
 Wave(Circle hc, Circle vc){
   this.hc=hc;
   this.vc=vc;    
 }
 
 
  void update(){
    
    this.x=vc.x+vc.radius+vc.d;
    this.y=hc.y+hc.radius+hc.d;
  }
 
  void show(){
    strokeWeight(8);
    point(this.x,this.y);
  }
  
}
