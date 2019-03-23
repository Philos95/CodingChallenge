float VelAng = 0.01;
ArrayList<Circle> horCircles = new ArrayList<Circle>();
ArrayList<Circle> verCircles = new ArrayList<Circle>();
ArrayList<Wave> waves = new ArrayList<Wave>();

void setup(){
  size (775,775);
  background(0);
  for(int i=1;i<=5;i++){
     Circle hc = new Circle(i,true,-PI/2,VelAng*i);
     horCircles.add(hc);
     Circle vc = new Circle(i,false,-PI/2,VelAng*i);
     verCircles.add(vc);
   }
   
   for(int i =0;i<horCircles.length;i++){
     for(int j =0;j<verCircles.length;j++){
     
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

   
}
