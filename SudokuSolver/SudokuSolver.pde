int WS=900; //WindowSize
ArrayList<Cell> cells = new ArrayList<Cell>();

Boolean waitForInsert=false;

void setup(){
  size (900,900);
  background(255);
  createCells();
}


void draw(){
    background(255);
    drawCells();
    markHighlight();  
}

void createCells(){
  for(int i=0;i<9;i++){
    for(int j=0;j<9;j++){
      Cell c = new Cell(i,j);
      cells.add(c);
      //c.value=9;
      c.show();
    }
  }
}

void drawCells(){
   for(Cell c: cells){
     c.show();
   }
  
  strokeWeight(2);
  line(WS/3,WS,WS/3,0);
  line(2*WS/3,WS,2*WS/3,0);
  line(0,WS/3,WS,WS/3);
  line(0,2*WS/3,WS,2*WS/3);
  
}


void markHighlight(){
for(Cell c: cells){
     if(c.highlighted){
        c.show();
     }
   }
}






void mouseClicked(){
  
  Cell c = whatIsClicked(cells,mouseX,mouseY);
  c.highlighted = true;
  for(Cell otherC: cells){
     if(otherC!=c){
       otherC.highlighted=false;
     }
   }
   markHighlight();
  
}

void keyPressed(){
}
