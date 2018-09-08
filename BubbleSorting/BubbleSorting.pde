int maxHeight = 500;
boolean start = false;


Line[] lines; 
int i =0;

void setup(){
  size (1000,500);
  background(0);
  lines = new Line[width];
  
  for (int i = 0;i<lines.length;i++){
    lines[i]= new Line(random(height));
    stroke(255);
    line(i, height, i, height - lines[i].len);
  }
}
void mouseClicked(){
  start = true;
  
}

void draw(){
  
  
if (start == true){  
  background(0);
  if(i<lines.length){
  //for(int i =0; i<lines.length;i++){
      for(int j=0;j<lines.length-i-1;j++){
        if(lines[j].len>lines[j+1].len){
          swap(lines,j,j+1);
        }
      
      }
    }else{
     
     println("finished");
    noLoop();
      
    }
    
    
    
    i++;
    
    for (int i = 0;i<lines.length;i++){
      stroke(255);
      line(i, height, i, height - lines[i].len);
    }
 }
}


void swap(Line[] arr,int a,int b)
{
  Line temp = arr[a];
  arr[a]=arr[b];
  arr[b]=temp;
}
