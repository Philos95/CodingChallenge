float VelAng = 0.01;
Circle firstCircle;
ArrayList<Circle> horCircles = new ArrayList<Circle>();
ArrayList<Circle> verCircles = new ArrayList<Circle>();
ArrayList<Wave> waves = new ArrayList<Wave>();

void setup(){
  fullScreen(P2D);
  background(0);
  for(int i=1;i<=10;i++){
     Circle hc = new Circle(i,true,0,VelAng*i);
     if(i==1){firstCircle= hc;}
     horCircles.add(hc);
     Circle vc = new Circle(i,false,0,VelAng*i);
     verCircles.add(vc);
   }
   
   for(Circle hc : horCircles){
     for(Circle vc : verCircles){
       Wave w= new Wave(hc,vc);
       waves.add(w);
     }
   }
}
     




void draw(){
   background(0);
  
   
   for(Circle hc : horCircles){
     hc.show();
     hc.update();
   }
   
    for(Circle vc : verCircles){
     vc.show();
     vc.update();
   }
   for(Wave w: waves){
     w.show();
     w.update();
   } 
   
   if(firstCircle.angle>TWO_PI){
    for(Wave w: waves){
       w.clearAll();
    }
     for(Circle hc : horCircles){ //<>//
       hc.angle=0;
       }
     
     for(Circle vc : verCircles){
       vc.angle=0;
     }
   
   }
   
}
