/* copyright : Personanimation
   Tugas Besar Grafika Multimedia-E
   Informatika 2019
*/


int t = 0;
int time = 1;
PFont  tulisan,tulisan2,tulisan3,tulisan4, text, textclosing, tulisanCredit;

  float x = 0;

  //Variabel untuk tirai 1
  float xTirai = 15;
  float xGaris = 45;
  float xPersegi = 0;
  float xAtasTirai=0;
  
  //Variabel Waktu (timer)
  float xWaktu = 1;
  //float x2Waktu2 = 1;
  
  
  //Variabel untuk tirai 2
  float xTirai2 = 885;
  float xGaris2 = 855;
  float xPersegi2 = 450;
  float xAtasTirai2 = 900;
  
    //Variabel untuk tirai 1
 float x2Tirai = 15;
  float x2Garis = 45;
  float x2Persegi = 0;
  float x2AtasTirai=0;
  
  ////Variabel Waktu (timer)
  float x2Waktu2 = 1;
  
  ////Variabel untuk tirai 2
  float x2Tirai2 = 1355;
  float x2Garis2 = 1325;
  float x2Persegi2 = 920;
  float x2AtasTirai2 = 1370;
  

void setup(){
  size(900,600);
  frameRate(20);
}

void draw(){
  
  background(255);
  if(t<=150 ){
    scene1();
    t++;
  }else if(t>150 && t<=750){
    Scene2();
    t++;
  }else if(t>750 && t<=850){
    //beda 100
    Scene3();
    t++;
  }else if(t>850 && t<=1350){
    //beda 500
    Scene4();
    t++;
  }else if(t>1350 && t<=1850){
    //beda 550
    Scene5();
    t++;
  }else if(t>1850 && t <= 2100){
    //beda 250
    scene6();
    t++;
  }else if (t>2100){
    scene7();
    t++;
  }
}
