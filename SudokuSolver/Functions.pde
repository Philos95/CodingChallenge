Cell whatIsClicked(ArrayList<Cell> cells,int mX,int mY){
  for(Cell c: cells){
    //Check row
    if((mY>=c.r*WS/9) && (mY <= (c.r+1)*WS/9)){
      //Check col
      if((mX>=c.c*WS/9)&& (mX<=(c.c+1)*WS/9)){
        
        return c; //<>//
      }
    }
  } 
  return null;
}
