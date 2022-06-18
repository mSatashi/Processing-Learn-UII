/* copyright : Personanimation
   Tugas Besar Grafika Multimedia-E
   Informatika 2019
*/


int t = 0;
int time = 1;
PFont tulisan, tulisan2,tulisan3,tulisan4;

void setup(){
  size(900,600);
  frameRate(20);
}

void draw(){
  
  background(255);
  if(t<=300){
    Scene2();
    t++;
  }if(t>300 && t<=500){
    
    Scene3();
    t++;
  }if(t>500 && t<=1000){
    
    Scene4();
    t++;
  }if(t>1000 && t<=1500){
    Scene5();
    t++;
  }if(t>1500){
  }
}
