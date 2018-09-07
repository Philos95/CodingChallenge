class Ball{
  float x;
  float y;
  float in_y;
  float size;
  color c;
  float speed =0;
  float grav = 0.1;
  float life;
  
  
  Ball(float x, float y,float size, color c){
    this.x = x;
    this.y = y;
    this.in_y=y;
    this.size=size;
    this.c = c;
  }
  
  void fall(){
    y=y+speed;
    speed = speed+grav;
    if (y>height)
    {
      speed = speed * -0.65;
      y = height;
      life++;
    }
    
    if(in_y > (height/3))
    {
      if (life>4)
        c=(255);
    }else if (in_y > (height*2/3)){
      if (life>7)
        c=(255);
      
    }else{
      if (life>10)
        c=(255);
    }
    
  }

  void show(){
    stroke(c);
    fill(c);
    ellipse(x,y,size,size);
  }

}
