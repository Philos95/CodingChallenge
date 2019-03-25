class Circle{
  boolean horizontal;
  float vAng;
  int num;
  float x;
  float y;
  float cx;
  float cy;
  float radius = 20;
  float d=30;
  float angle;
  
  
  Circle(int num,boolean horizontal,float startingAngle,float vAng){
    this.vAng=vAng;
    this.num=num;
    this.horizontal=horizontal;
    
    if(horizontal){
      this.cx=radius +(num*radius*2)+(d*num);
      this.cy = radius+d/3;
    }else{
      this.cy=radius +(num*radius*2)+(d*num);
      this.cx = radius+d/3;
    }
    
    this.x=cx+radius*cos(startingAngle);
    this.y=cy+radius * sin(startingAngle);
    this.angle =startingAngle;
  }
  
  
 void pointing(){
    strokeWeight(0.5);
    if(horizontal){
      for(float i = this.y;i<height;i=i+10){
        point(this.x,i);
      }       
    }else{
      for(float i = this.x;i<width;i=i+10){
        point(i,this.y);
       }
    }
 }
  
  
  
  void show(){
    stroke(255);
    strokeWeight(1);
    noFill();
    
    circle(this.cx,this.cy,radius*2);
    
    
    pointing();
    strokeWeight(8);
    point(this.x,this.y);
    
  }
  
  
 void update(){
   angle += vAng;
   this.x=cx+radius*cos(angle);
   this.y=cy+radius * sin(angle);
 }
  
 
}
