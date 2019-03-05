class Cell{
  int r;
  int c;
  int value=0;
  Boolean highlighted=false;

  Cell(int r,int c){
    this.r=r;
    this.c=c;
  
  }
  
  
  void show(){
    strokeWeight(1);
    stroke(0);
    noFill();
    
    if(highlighted){
      stroke(0,255,0);
    }
    rect(c*WS/9,r*WS/9,WS/9,WS/9);
    stroke(0);
    
    if(this.value!=0)
    {
      fill(0);
      textSize(64);
      text(str(value), (c*WS/9)+(WS/36), (r*WS/9)+(WS/12)); 
  
    }
  }


}
