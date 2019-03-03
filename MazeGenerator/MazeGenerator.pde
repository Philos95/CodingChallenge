//Link https://en.wikipedia.org/wiki/Maze_generation_algorithm



int cols,rows;
int w=20;

ArrayList<Cell> grid = new ArrayList<Cell>();

Cell current;

void setup(){
  size(800,800);
  background(0);
  cols = floor(width/w);
  rows = floor(height/w);
  
  for (int j = 0; j < rows; j++) {
    for (int i = 0; i < cols; i++) {
      Cell cell = new Cell(i, j);
      grid.add(cell);
    }
  }

//STEP 1.0a
current =grid.get(0);

}

void draw(){
  background(0);
  
  for(int i =0;i<grid.size();i++){
    grid.get(i).show();
  }
  //STEP 1.0b
  current.visited = true;
  current.highlight();
  
  
}
