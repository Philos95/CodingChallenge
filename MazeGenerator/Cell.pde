class Cell{
  
  int i,j;
  boolean visited = false;

  Cell(int i,int j){
    this.i = i;
    this.j = j;
  
  }


  void show(){
    int x = this.i * w;
    int y = this.j * w;
    
    stroke(255);
    
    
    line(x,y,x+w,y);
    line(x+w,y,x+w,y+w);
    line(x+w,y+w,x,y+w);
    line(x,y+w,x,y);
    
    if(this.visited){
    noStroke();
    fill(255,0,0);
    rect(x,y,w,w);
    }
  
  }
  
  void highlight(){
    int x = this.i * w;
    int y = this.j * w;
    noStroke();
    fill(0,0,255,100);
    rect(x,y,w,w);
  }

}
