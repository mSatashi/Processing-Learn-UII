PFont tulisan;

//Variabel untuk tirai 1
float xTirai = 15;
float xGaris = 45;
float xPersegi = 0;
float xAtasTirai = 0;

//Variabel Waktu(timer)
float waktu = 1;

//Variabel untuk tirai 2
float xTirai2 = 1065;
float xGaris2 = 1035;
float xPersegi2 = 555;
float xAtasTirai2 = 1080;


void setup()
{
 frameRate(60);
 size(1080,720);
 background(255);
 smooth();
 tulisan = createFont("Jojoba.otf",60);
}

void draw(){
  //waktu itu 1 detik = jumlah framerate * 1
  if(waktu <= 60*10){
    latar();
    tangankiri();
    tangankanan();
    kakikiri();
    kakikanan();
    people1();
    papantulis();
    petunjuk();
    //Geser Kiri Tirai 1
    if(xTirai+480 >= 0){
      tirai1(xTirai, xGaris, xPersegi, xAtasTirai);
      waktu++;
      xTirai = xTirai - 5; //nilai awal xtirai 15
      xGaris = xGaris - 5;
      xPersegi = xPersegi - 5;
      xAtasTirai = xAtasTirai - 5;
      println(xTirai); //untuk ngecek di console
    }
    
    //Geser kekanan tirai2
    if(xTirai2-420 <= 1080){
      tirai2(xTirai2, xGaris2, xPersegi2, xAtasTirai2);
      xTirai2 = xTirai2 + 5;
      xGaris2 = xGaris2 + 5;
      xPersegi2 = xPersegi2 + 5;
      xAtasTirai2 = xAtasTirai2 + 5;
    }
    
    waktu++;
  }
  
  //misal scene sayyid 50 detik trus closing
  //misal scene athiya 60 detik trus closing
  
  
  //Scene Closing
  if(waktu >= 60*10 && waktu <= 60*20 ){
    background(#3ACFFA);
    latar2();
    papantulis2();
    tangankiri2();
    tangankanan2();
    kakikiri2();
    kakikanan2();
    people3();
    people4();
    waktu++;
    if(waktu >= 60*9){
      
      if(xTirai <= 5){
        tirai1(xTirai, xGaris, xPersegi, xAtasTirai);
        xTirai = xTirai + 5;
        xGaris = xGaris + 5;
        xPersegi = xPersegi + 5;
        xAtasTirai = xAtasTirai + 5;
      }
      tirai1(xTirai, xGaris, xPersegi, xAtasTirai);
      
      if(xTirai2 >= (1065)){
        tirai2(xTirai2, xGaris2, xPersegi2, xAtasTirai2);
        xTirai2 = xTirai2 - 5;
        xGaris2 = xGaris2 - 5;
        xPersegi2 = xPersegi2 - 5;
        xAtasTirai2 = xAtasTirai2 - 5;
      }
      tirai2(xTirai2, xGaris2, xPersegi2, xAtasTirai2);
      waktu++;
  }
}
  
  
}


void latar(){
  noStroke();
  fill(#69E3E0);
  rect(0,0,1080,500);
  fill(#A57F7F);
  rect(0,500,1080,720);
}

void tangankiri(){
  noStroke();
  fill(#F7D6BB);
  ellipse(125, 403, 25, 25);//tangan kiri cowo
  fill(#fdc689);
  quad(180, 310, 180, 360, 140, 410, 115, 390); //lengan kiri cowo 
}  

void tangankanan(){
  noStroke();
  fill(#F7D6BB);
  ellipse(375, 403, 25, 25); //tangan kanan cowo
  fill(#fdc689);
  quad(325, 310, 325, 360, 360, 410, 385, 390); //lengan kanan 
  
  stroke(#674005);
  strokeWeight(2);
  line(375, 403, 425, 390);
  
}  
 

void kakikiri(){
  noStroke();
  fill(#F7D6BB);
  rect(210,515,24,40);//cowo
  ellipse(222,555,24,24);

}

void kakikanan(){
  noStroke();
  fill(#F7D6BB);
  rect(270,515,24,40);//cowo
  ellipse(282,555,24,24);

}



 ///////////////AKHIES/////////////////  
  
void people1()
{
  noStroke();
  fill(#F7D6BB);
  ellipse(250, 220, 150, 150); //kepala muka
  quad(237, 293, 235, 314, 267, 314, 265, 293); // leher
 
  ellipse(175, 230, 20, 25);//telinga kiri
  ellipse(325, 230, 20, 25);//telinga kanan

  //fill(0);
  //rect(173, 80, 153, 80); //Peci kotak
 
  //peci bunder coklat
  fill(#624C20);
   arc(250, 205, 150, 135, -PI,0); 
  fill(#9B8049);
   stroke(#9B8049);
   strokeWeight(6);
   line(179, 190, 320, 190);

 
 
  // jenggot
  noStroke();
  fill(0);
   triangle(237, 288, 267, 288 ,252, 298); 
 
  //sarung
  strokeWeight(3);
  fill(#8c6239);
  beginShape();
   vertex(179, 420);
   vertex(174, 530);
   quadraticVertex(250, 550, 329, 530);
   vertex(324, 420);
  endShape(CLOSE);
 
  //garis sarung
  stroke(#79471F); 
  line(200, 425, 200, 535);//vertikal
  line(220, 425, 220, 536);//vertikal
  line(290, 425, 290, 536);//vertikal
  line(305, 425, 305, 534);//vertikal
 
  line(178, 455, 324, 455);//horizontal
  line(177, 465, 325, 465);//horizontal 
  line(176, 500, 326, 500);//horizontal  
  line(175, 520, 327, 520);//horizontal 
 
  noStroke();
  fill(#fdc689);
  rect(178, 310, 147, 120);//baju
  quad(178, 310, 325, 310, 267, 303, 235, 303);//PUNDAK
  bezier(178, 430, 220, 440, 283, 440, 325, 430); //lengkungan bawah baju

 
  noStroke();
  fill(#79471F); 
  bezier(226, 303, 236, 318, 265, 318, 275, 303);//lingakaran baju leher

  stroke(#79471F);
  line(240, 314, 240, 435);//garis tengah
  
  noStroke();//kancing baju
  fill(#5A3210);
  ellipse(250, 325, 8, 8);
  ellipse(250, 355, 8, 8);
  ellipse(250, 385, 8, 8);
  ellipse(250, 415, 8, 8); 
  
 
  fill(255); // mata putih
  stroke(0);
  strokeWeight(0.5);
  ellipse(220, 230, 26, 16);
  ellipse(280, 230, 26, 16);
 
  fill(0); // mata hitam
  ellipse(220, 230, 10, 10);
  ellipse(280, 230, 10, 10);
 
  //stroke(0);
  fill(255); //mulut
  noStroke();
  strokeWeight(3);
  bezier(228, 264, 240, 280, 265, 280, 277, 264);
  
  //alis 
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(210, 213, 212, 209, 228, 209, 230, 213);
  bezier(270, 213, 272, 209, 288, 209, 290, 213);

} 
 
 void papantulis(){
   stroke(0);
   strokeWeight(4);
   line(435, 100, 735, 70);
   line(1015, 100, 735, 70);
   fill(#6F4A00);
   noStroke();
   ellipse(735, 75, 20, 20);
   stroke(#DEB624);
   strokeWeight(10);
   fill(#106204);//hijau
   rect(425, 100, 600, 400, 20);
   
   textFont(tulisan);
   fill(255);
   textAlign(CENTER);
   text("Assalamu'alaikum", 725, 240);
   text("Warahmatullahi", 725, 310);
   text("Wabarakatuh", 725, 380);
}
void petunjuk()
{
  stroke(#674005);
  strokeWeight(2);
  line(375, 403, 425, 390);
}

void tirai1(float xTirai, float xGaris, float xPersegi, float xAtasTirai)
{
  
  noStroke();
  fill(#950608);
  rect(xPersegi, 0, 525, 690);
  
  fill(#950608);
  ellipse(xTirai, 690, 60, 50);
  ellipse(xTirai+60, 690, 60, 50);
  ellipse(xTirai+120, 690, 60, 50);
  ellipse(xTirai+180, 690, 60, 50);
  ellipse(xTirai+240, 690, 60, 50);
  ellipse(xTirai+300, 690, 60, 50);
  ellipse(xTirai+360, 690, 60, 50);
  ellipse(xTirai+420, 690, 60, 50);
  ellipse(xTirai+480, 690, 60, 50);
  
  stroke(0);
  strokeWeight(1);
  line(xGaris, 695, xGaris, 0);
  line(xGaris + 60, 695, xGaris + 60, 0);
  line(xGaris + 120, 695, xGaris + 120, 0);
  line(xGaris + 180, 695, xGaris + 180, 0);
  line(xGaris + 240, 695, xGaris + 240, 0);
  line(xGaris + 300, 695, xGaris + 300, 0);
  line(xGaris + 360, 695, xGaris + 360, 0);
  line(xGaris + 420, 695, xGaris + 420, 0);
  
  fill(#760A0B);
  ellipse(xAtasTirai, 0, 210, 200);
  ellipse(xAtasTirai + 135, 0, 60, 50);
  ellipse(xAtasTirai + 195, 0, 60, 50);
  ellipse(xAtasTirai + 255, 0, 60, 50);
  ellipse(xAtasTirai + 315, 0, 60, 50);
  ellipse(xAtasTirai + 375, 0, 60, 50);
  ellipse(xAtasTirai + 435, 0, 60, 50);
  ellipse(xAtasTirai + 495, 0, 58, 50);

 
}

void tirai2(float xTirai2, float xGaris2, float xPersegi2, float xAtasTirai2)
{
  
  noStroke();
  fill(#950608);
  rect(xPersegi2, 0, 535, 690);
  
  fill(#950608);
  ellipse(xTirai2, 690, 60, 50);
  ellipse(xTirai2 - 60, 690, 60, 50);
  ellipse(xTirai2 - 120, 690, 60, 50);
  ellipse(xTirai2 - 180, 690, 60, 50);
  ellipse(xTirai2 - 240, 690, 60, 50);
  ellipse(xTirai2 - 300, 690, 60, 50);
  ellipse(xTirai2 - 360, 690, 60, 50);
  ellipse(xTirai2 - 420, 690, 60, 50);
  ellipse(xTirai2 - 480, 690, 60, 50);
  
  stroke(0);
  strokeWeight(1);
  line(xGaris2, 695, xGaris2, 0);
  line(xGaris2 - 60, 695, xGaris2 - 60, 0);
  line(xGaris2 - 120, 695, xGaris2 - 120, 0);
  line(xGaris2 - 180, 695, xGaris2 - 180, 0);
  line(xGaris2 - 240, 695, xGaris2 - 240, 0);
  line(xGaris2 - 300, 695, xGaris2 - 300, 0);
  line(xGaris2 - 360, 695, xGaris2 - 360, 0);
  line(xGaris2 - 420, 695, xGaris2 - 420, 0);
  
  fill(#760A0B);
  ellipse(xAtasTirai2, 0, 210, 200);
  ellipse(xAtasTirai2 - 135, 0, 60, 50);
  ellipse(xAtasTirai2 - 195, 0, 60, 50);
  ellipse(xAtasTirai2 - 255, 0, 60, 50);
  ellipse(xAtasTirai2 - 315, 0, 60, 50);
  ellipse(xAtasTirai2 - 375, 0, 60, 50);
  ellipse(xAtasTirai2 - 435, 0, 60, 50);
  ellipse(xAtasTirai2 - 495, 0, 60, 50);
  
 
}

void latar2(){
  noStroke();
  fill(#3ACFFA);
  rect(0,0,1080,500);
  fill(#5DCE38);
  rect(0,500,1080,720);
}

 void papantulis2(){
   stroke(0);
   strokeWeight(4);
   line(255, 100, 555, 70);
   line(835, 100, 555, 70);
   fill(#6F4A00);
   noStroke();
   ellipse(555, 75, 20, 20);
   stroke(#DEB624);
   strokeWeight(10);
   fill(#106204);//hijau
   rect(245, 100, 600, 400, 20);
   
   textFont(tulisan);
   fill(255);
   text("TERIMA KASIH", 550, 300);
}

void tangankiri2(){
  noStroke();
  fill(#F7D6BB);
  ellipse(65, 403, 25, 25);//tangan kiri cowo
  fill(#fdc689);
  quad(120, 310, 120, 360, 80, 410, 55, 390); //lengan kiri cowo 
  
  fill(#F7D6BB);
  ellipse(780, 415, 25, 25);//tangan kiri cewe
  fill(#bf884b);
  quad(830, 330, 770, 403, 795, 418, 840, 380); //lengan kiri

}  

void tangankanan2(){
  noStroke();
  fill(#F7D6BB);
  ellipse(315, 403, 25, 25); //tangan kanan cowo
  fill(#fdc689);
  quad(265, 310, 265, 360, 300, 410, 325, 390); //lengan kanan 
  
  fill(#F7D6BB);
  ellipse(1020, 415, 25, 25); //tangan kanan cewe
  fill(#bf884b);
  quad(970, 330, 1030, 403, 1005, 418, 960, 380); //lengan kanan
  

}  
 

void kakikiri2(){
  noStroke();
  fill(#F7D6BB);
  rect(150,515,24,40);//cowo
  ellipse(162,555,24,24);

  rect(860,515,24,40);//cewe
  ellipse(872,555,24,24);

}

void kakikanan2(){
  noStroke();
  fill(#F7D6BB);
  rect(210,515,24,40);//cowo
  ellipse(222,555,24,24);
  rect(920,515,24,40);//cewe
  ellipse(932,555,24,24);


}

  
void people3()
{
  noStroke();
  fill(#F7D6BB);
  ellipse(190, 220, 150, 150); //kepala muka
  quad(177, 293, 175, 314, 207, 314, 205, 293); // leher
 
  ellipse(115, 230, 20, 25);//telinga kiri
  ellipse(265, 230, 20, 25);//telinga kanan

  //fill(0);
  //rect(173, 80, 153, 80); //Peci kotak
 
  //peci bunder coklat
  fill(#624C20);
   arc(190, 205, 150, 135, -PI,0); 
  fill(#9B8049);
   stroke(#9B8049);
   strokeWeight(6);
   line(119, 190, 260, 190);

 
 
  // jenggot
  noStroke();
  fill(0);
   triangle(177, 288, 207, 288 ,192, 298); 
 
  //sarung
  strokeWeight(3);
  fill(#8c6239);
  beginShape();
   vertex(119, 420);
   vertex(114, 530);
   quadraticVertex(190, 550, 269, 530);
   vertex(264, 420);
  endShape(CLOSE);
 
  //garis sarung
  stroke(#79471F); 
  line(140, 425, 140, 535);//vertikal
  line(160, 425, 160, 536);//vertikal
  line(230, 425, 230, 536);//vertikal
  line(245, 425, 245, 534);//vertikal
 
  line(118, 455, 264, 455);//horizontal
  line(117, 465, 265, 465);//horizontal 
  line(116, 500, 266, 500);//horizontal  
  line(115, 520, 267, 520);//horizontal 
 
  noStroke();
  fill(#fdc689);
  rect(118, 310, 147, 120);//baju
  quad(118, 310, 265, 310, 207, 303, 175, 303);//PUNDAK
  bezier(118, 430, 160, 440, 223, 440, 265, 430); //lengkungan bawah baju

 
  noStroke();
  fill(#79471F); 
  bezier(166, 303, 176, 318, 205, 318, 215, 303);//lingakaran baju leher

  stroke(#79471F);
  line(180, 314, 180, 435);//garis tengah
  
  noStroke();//kancing baju
  fill(#5A3210);
  ellipse(190, 325, 8, 8);
  ellipse(190, 355, 8, 8);
  ellipse(190, 385, 8, 8);
  ellipse(190, 415, 8, 8); 
  
 
  fill(255); // mata putih
  stroke(0);
  strokeWeight(0.5);
  ellipse(160, 230, 26, 16);
  ellipse(220, 230, 26, 16);
 
  fill(0); // mata hitam
  ellipse(160, 230, 10, 10);
  ellipse(220, 230, 10, 10);
 
  //stroke(0);
  fill(255); //mulut
  noStroke();
  strokeWeight(3);
  bezier(168, 264, 180, 280, 205, 280, 217, 264);
  
  //alis 
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(150, 213, 152, 209, 168, 209, 170, 213);
  bezier(210, 213, 212, 209, 228, 209, 230, 213);

} 

  //////UKHTIES//////

void people4(){ 
 
 noStroke();
 fill(#bf884b);//Pakaian
 beginShape();//rokbawah
  vertex(830, 480);
  quadraticVertex(900, 490, 970, 480);
  vertex(975, 530);
  quadraticVertex(900, 540, 825, 530);
  ellipse(900, 530, 150, 30);
 endShape(CLOSE); 

 fill(#fbd2a4);//baju rompi 
 beginShape();//baju
  vertex(830, 330);
  quadraticVertex(840, 410, 825, 480);
  vertex(975, 480);
  quadraticVertex(960, 410, 970, 330);
  ellipse(900, 480, 150, 30);
 endShape(CLOSE);
 
 fill(#bf884b);
 beginShape();//baju dalam
  vertex(880, 370);
  quadraticVertex(890, 440, 875, 495);
  vertex(925, 495);
  quadraticVertex(910, 435, 920, 370);
 endShape(CLOSE);
 
 
 fill(#603913);
 beginShape();//pendeng
  vertex(830, 415);
  quadraticVertex(900, 435, 970, 415);
  vertex(970, 425);
  quadraticVertex(900, 445, 830, 425);
  ellipse(900, 430, 40, 25);
 endShape(CLOSE); 
  fill(#CB9302);
  ellipse(890, 430, 8, 8);
  ellipse(910, 430, 8, 8);
  stroke(#CB9302);
  strokeWeight(2.5);
  line(900, 425, 900, 435);
 
 
 fill(#734c21);
  noStroke();
  ellipse(900, 250, 160, 160); //kerudung belakang
  quad(820, 250, 820, 330, 980, 330, 980, 250);
  triangle(820, 330, 900, 390, 980, 330);
 
 fill(#F7D6BB);
  ellipse(900, 270, 140, 140); //kepala muka
 
 fill(#734c21);
  arc(900, 250, 150, 135, -PI,0); //kerudung opsi2
 
 fill(#F7D6BB);
  ellipse(900, 260, 140, 80); //pembentuk kerudung
 
 
 fill(255); //mata putih
  stroke(0);
  strokeWeight(0.5);
  ellipse(870, 265, 25, 15);
  ellipse(930, 265, 25, 15);
 
 fill(0); //mata hitam
  ellipse(870, 265, 10, 10);
  ellipse(930, 265, 10, 10);
 
  stroke(0);
  noFill(); //mulut
  strokeWeight(3);
  bezier(880, 301, 893, 315, 908, 315, 922, 301);
  
  //alis 
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(860, 243, 862, 239, 878, 239, 880, 243);
  bezier(920, 243, 922, 239, 938, 239, 940, 243);
 
}
