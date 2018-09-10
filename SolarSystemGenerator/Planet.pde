class Planet{
 float radius;
 float angle;
 float distance;
 float orbitSpeed;
 Planet[] planets;
 
 Planet(float r,float d,float o){
   radius = r;
   distance = d;
   angle = random(2*PI);
   orbitSpeed = o;
   
   }
   void orbit()
   {
     angle = angle + orbitSpeed;
     if(planets!= null){
      for(int i = 0; i<planets.length;i++){
       planets[i].orbit();
       }
     }
   }
   
   void spawnMoons(int total,int level){
     planets = new Planet[total];
     for(int i = 0; i<planets.length;i++){
       float r = radius/level;
       float d = random(75,300);
       float o = random(-0.03,0.03);
       
       planets[i] = new Planet(r,d/level,o);
       
       if(level <3){    
         planets[i].spawnMoons(int(random(0,3)) ,level+1);
       }
     }
   }
   
   
   void show(){
     pushMatrix();
     fill(255,100);
     rotate(angle);  
     translate(distance,0);
      
     ellipse(0,0, radius*2,radius*2);
     
     if(planets!= null){
     
       for(int i = 0; i<planets.length;i++){
       
         planets[i].show();
     
       }
     }
     popMatrix();
   }
}
