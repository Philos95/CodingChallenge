class Wave{
 Circle hc;
 Circle vc;
 float x;
 float y;
 ArrayList<Point> points = new ArrayList<Point>();
 
 
 Wave(Circle hc, Circle vc){
   this.hc=hc;
   this.vc=vc;
   Point p = new Point(hc.x,hc.y);
   points.add(p);
 }
 
 
  void update(){  
    this.x=hc.x;
    this.y=vc.y;
    Point p = new Point(this.x,this.y);
    points.add(p);
  }
 
  void show(){
    strokeWeight(8);
    point(this.x,this.y);
    for(Point p :points){
      p.show();
    }
  }
  
   void clearAll(){
    points.clear();
   }
  
}
