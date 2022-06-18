 //PFont textclosing;
  ////Variabel untuk tirai 1
  //float x2Tirai = 15;
  //float x2Garis = 45;
  //float x2Persegi = 0;
  //float x2AtasTirai=0;
  
  ////Variabel Waktu (timer)
  //float x2Waktu2 = 1;
  
  ////Variabel untuk tirai 2
  //float x2Tirai2 = 885;
  //float x2Garis2 = 855;
  //float x2Persegi2 = 450;
  //float x2AtasTirai2 = 900;
  
void scene6()
{
  //translate(width/2, height/2);
 textclosing = createFont("Jojoba.otf",45);
 runScene6();
}  
  
void runScene6()
{
   //if(x2Waktu2 <= 20*10){
   //if(x2Waktu2 >= 60*10){
    latarClosing();
    papantulisscene2();
    tangankiriscene2();
    tangankananscene2();
    kakikiriscene2();
    kakikananscene2();
    people1scene2();
    people2scene2();
    //tirai1scene2(x2Tirai, x2Garis, x2Persegi, x2AtasTirai);
    //tirai2scene2(x2Tirai2, x2Garis2, x2Persegi2, x2AtasTirai2);
    //if(x2Waktu2 >= 20*12){
    //closing
    xWaktu++;
   if(xWaktu >= 35*10){
    if(xTirai <= 10){
      tirai1scene2(xTirai, xGaris, xPersegi, xAtasTirai);
      
      xTirai = xTirai + 5;
      xGaris = xGaris + 5;
      xPersegi = xPersegi + 5;
      xAtasTirai = xAtasTirai + 5;
    }
    tirai1scene2(xTirai, xGaris, xPersegi, xAtasTirai);
    
    if(xTirai2 >= 885){
      tirai2scene2( xTirai2, xGaris2, xPersegi2, xAtasTirai2);
      xTirai2 = xTirai2 - 5;
      xGaris2 = xGaris2 - 5;
      xPersegi2 = xPersegi2 - 5;
      xAtasTirai2 = xAtasTirai2 - 5;
    }
    
     tirai2scene2( xTirai2, xGaris2, xPersegi2, xAtasTirai2);
     xWaktu++;
    }
  
}



void latarClosing(){
  noStroke();
  fill(#3ACFFA);
  rect(0,0,1880,800);
  fill(#5DCE38);
  rect(0,700,1880,600);
}

 void papantulisscene2(){
   stroke(0);
   strokeWeight(4);
   line(160, 100, 460, 70);
   line(745, 100, 460, 70);
   fill(#6F4A00);
   noStroke();
   ellipse(460, 75, 20, 20);
   stroke(#DEB624);
   strokeWeight(10);
   fill(#106204);//hijau
   rect(453, 300, 600, 400, 20);
   
   textFont(textclosing);
   fill(255);
   textAlign(CENTER);
   text("Wassalamu'alaikum", 450, 240);
   text("Warahmatullahi", 450, 310);
   text("Wabarakatuh", 450, 380);
 }

void tangankiriscene2(){
  noStroke();
  fill(#F7D6BB);
  ellipse(30, 403, 25, 25);//tangan kiri cowo
  fill(#fdc689);
  quad(85, 310, 85, 360, 45, 410, 20, 390); //lengan kiri cowo 
  
  fill(#F7D6BB);
  ellipse(630, 415, 25, 25);//tangan kiri cewe
  fill(#bf884b);
  quad(680, 330, 620, 403, 645, 418, 690, 380); //lengan kiri
}

void tangankananscene2(){
  noStroke();
  fill(#F7D6BB);
  ellipse(280, 403, 25, 25); //tangan kanan cowo
  fill(#fdc689);
  quad(230, 310, 230, 360, 265, 410, 290, 390); //lengan kanan 
  
  fill(#F7D6BB);
  ellipse(870, 415, 25, 25); //tangan kanan cewe
  fill(#bf884b);
  quad(820, 330, 880, 403, 855, 418, 810, 380); //lengan kanan
}

void kakikiriscene2(){
  noStroke();
  fill(#F7D6BB);
  rect(127,530,24,70);//cowo
  ellipse(127,560,24,24);

  rect(722,530,24,70);//cewe
  ellipse(722,560,24,24);
}

void kakikananscene2(){
  noStroke();
  fill(#F7D6BB);
  rect(187,530,24,70);//cowo
  ellipse(187,560,24,24);
  rect(782,530,24,70);//cewe
  ellipse(782,560,24,24);
}

void people1scene2()
{
  noStroke();
  fill(#F7D6BB);
  ellipse(155, 220, 150, 150); //kepala muka
  quad(142, 293, 140, 314, 172, 314, 170, 293); // leher
 
  ellipse(80, 230, 20, 25);//telinga kiri
  ellipse(230, 230, 20, 25);//telinga kanan

  //fill(0);
  //rect(173, 80, 153, 80); //Peci kotak
 
  //peci bunder coklat
  fill(#624C20);
   arc(155, 205, 150, 135, -PI,0); 
  fill(#9B8049);
   stroke(#9B8049);
   strokeWeight(6);
   line(84, 190, 225, 190);

 
 
  // jenggot
  noStroke();
  fill(0);
   triangle(142, 288, 172, 288 ,157, 298); 
 
  //sarung
  strokeWeight(3);
  fill(#8c6239);
  beginShape();
   vertex(84, 420);
   vertex(79, 530);
   quadraticVertex(155, 550, 234, 530);
   vertex(229, 420);
  endShape(CLOSE);
 
  //garis sarung
  stroke(#79471F); 
  line(105, 425, 105, 535);//vertikal
  line(125, 425, 125, 536);//vertikal
  line(195, 425, 195, 536);//vertikal
  line(210, 425, 210, 534);//vertikal
 
  line(83, 455, 229, 455);//horizontal
  line(82, 465, 230, 465);//horizontal 
  line(81, 500, 231, 500);//horizontal  
  line(80, 520, 232, 520);//horizontal 
 
  noStroke();
  fill(#fdc689);
  rect(158, 370, 147, 120);//baju
  quad(83, 310, 230, 310, 172, 303, 140, 303);//PUNDAK
  bezier(83, 430, 125, 440, 188, 440, 230, 430); //lengkungan bawah baju

 
  noStroke();
  fill(#79471F); 
  bezier(131, 303, 141, 318, 170, 318, 180, 303);//lingakaran baju leher

  stroke(#79471F);
  line(145, 314, 145, 435);//garis tengah
  
  noStroke();//kancing baju
  fill(#5A3210);
  ellipse(155, 325, 8, 8);
  ellipse(155, 355, 8, 8);
  ellipse(155, 385, 8, 8);
  ellipse(155, 415, 8, 8); 
  
 
  fill(255); // mata putih
  stroke(0);
  strokeWeight(0.5);
  ellipse(125, 230, 26, 16);
  ellipse(185, 230, 26, 16);
 
  fill(0); // mata hitam
  ellipse(125, 230, 10, 10);
  ellipse(185, 230, 10, 10);
 
  //stroke(0);
  fill(255); //mulut
  noStroke();
  strokeWeight(3);
  bezier(133, 264, 145, 280, 170, 280, 182, 264);
  
  //alis 
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(115, 213, 117, 209, 133, 209, 135, 213);
  bezier(175, 213, 177, 209, 193, 209, 195, 213);

} 

////cewe///
void people2scene2(){ 
 
 noStroke();
 fill(#bf884b);//Pakaian
 beginShape();//rokbawah
  vertex(680, 480);
  quadraticVertex(750, 490, 820, 480);
  vertex(825, 530);
  quadraticVertex(750, 540, 675, 530);
  ellipse(750, 530, 150, 30);
 endShape(CLOSE); 

 fill(#fbd2a4);//baju rompi 
 beginShape();//baju
  vertex(680, 330);
  quadraticVertex(690, 410, 675, 480);
  vertex(825, 480);
  quadraticVertex(810, 410, 820, 330);
  ellipse(750, 480, 150, 30);
 endShape(CLOSE);
 
 fill(#bf884b);
 beginShape();//baju dalam
  vertex(730, 370);
  quadraticVertex(740, 440, 725, 495);
  vertex(775, 495);
  quadraticVertex(760, 435, 770, 370);
 endShape(CLOSE);
 
 
 fill(#603913);
 beginShape();//pendeng
  vertex(680, 415);
  quadraticVertex(750, 435, 820, 415);
  vertex(820, 425);
  quadraticVertex(750, 445, 680, 425);
  ellipse(750, 430, 40, 25);
 endShape(CLOSE); 
  fill(#CB9302);
  ellipse(740, 430, 8, 8);
  ellipse(760, 430, 8, 8);
  stroke(#CB9302);
  strokeWeight(2.5);
  line(750, 425, 750, 435);
 
 
 fill(#734c21);
  noStroke();
  ellipse(750, 250, 160, 160); //kerudung belakang
  quad(670, 250, 670, 330, 830, 330, 830, 250);
  triangle(670, 330, 750, 390, 830, 330);
 
 fill(#F7D6BB);
  ellipse(750, 270, 140, 140); //kepala muka
 
 fill(#734c21);
  arc(750, 250, 150, 135, -PI,0); //kerudung opsi2
 
 fill(#F7D6BB);
  ellipse(750, 260, 140, 80); //pembentuk kerudung
 
 
 fill(255); //mata putih
  stroke(0);
  strokeWeight(0.5);
  ellipse(720, 265, 25, 15);
  ellipse(780, 265, 25, 15);
 
 fill(0); //mata hitam
  ellipse(720, 265, 10, 10);
  ellipse(780, 265, 10, 10);
 
  stroke(0);
  noFill(); //mulut
  strokeWeight(3);
  bezier(730, 301, 743, 315, 758, 315, 772, 301);
  
  //alis 
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(710, 243, 712, 239, 728, 239, 730, 243);
  bezier(770, 243, 772, 239, 788, 239, 790, 243);
 
}


void tirai1scene2(float x2Tirai, float x2Garis, float x2Persegi, float x2AtasTirai)
{
  
  noStroke();
  fill(#950608);
  rect(x2Persegi, 0, 900, 1150);
  
  fill(#950608);
  ellipse(x2Tirai, 570, 60, 50);
  ellipse(x2Tirai+60, 570, 60, 50);
  ellipse(x2Tirai+120, 570, 60, 50);
  ellipse(x2Tirai+180, 570, 60, 50);
  ellipse(x2Tirai+240, 570, 60, 50);
  ellipse(x2Tirai+300, 570, 60, 50);
  ellipse(x2Tirai+360, 570, 60, 50);
  ellipse(x2Tirai+412, 570, 45, 35);
  
  stroke(0);
  strokeWeight(1);
  line(x2Garis, 575, x2Garis, 0);
  line(x2Garis+60, 575, x2Garis+60, 0);
  line(x2Garis+120, 575, x2Garis+120, 0);
  line(x2Garis+180, 575, x2Garis+180, 0);
  line(x2Garis+240, 575, x2Garis+240, 0);
  line(x2Garis+300, 575, x2Garis+300, 0);
  line(x2Garis+360, 575, x2Garis+360, 0);
  line(x2Garis+405, 575, x2Garis+405, 0);

  fill(#760A0B);
  ellipse(x2AtasTirai, 0, 210, 200);
  ellipse(x2AtasTirai + 135, 0, 60, 50);
  ellipse(x2AtasTirai + 195, 0, 60, 50);
  ellipse(x2AtasTirai + 255, 0, 60, 50);
  ellipse(x2AtasTirai + 315, 0, 60, 50);
  ellipse(x2AtasTirai + 375, 0, 60, 50);
  ellipse(x2AtasTirai + 427, 0, 45, 35);  

 
}

void tirai2scene2(float x2Tirai2, float x2Garis2, float x2Persegi2, float x2AtasTirai2)
{
  
  noStroke();
  fill(#950608);
  rect(x2Persegi2 + 300, 0, 600, 1150);
  
  fill(#950608);
  ellipse(x2Tirai2, 570, 60, 50);
  ellipse(x2Tirai2-60, 570, 60, 50);
  ellipse(x2Tirai2-120, 570, 60, 50);
  ellipse(x2Tirai2-180, 570, 60, 50);
  ellipse(x2Tirai2-240, 570, 60, 50);
  ellipse(x2Tirai2-300, 570, 60, 50);
  ellipse(x2Tirai2-360, 570, 60, 50);
  ellipse(x2Tirai2-412, 570, 45, 35);
  
  stroke(0);
  strokeWeight(1);
  line(x2Garis2, 575, x2Garis2, 0);
  line(x2Garis2-60, 575, x2Garis2-60, 0);
  line(x2Garis2-120, 575, x2Garis2-120, 0);
  line(x2Garis2-180, 575, x2Garis2-180, 0);
  line(x2Garis2-240, 575, x2Garis2-240, 0);
  line(x2Garis2-300, 575, x2Garis2-300, 0);
  line(x2Garis2-360, 575, x2Garis2-360, 0);
  line(x2Garis2-405, 575, x2Garis2-405, 0);

  
  fill(#760A0B);
  ellipse(x2AtasTirai2, 0, 210, 200);
  ellipse(x2AtasTirai2 - 135, 0, 60, 50);
  ellipse(x2AtasTirai2 - 195, 0, 60, 50);
  ellipse(x2AtasTirai2 - 255, 0, 60, 50);
  ellipse(x2AtasTirai2 - 315, 0, 60, 50);
  ellipse(x2AtasTirai2 - 375, 0, 60, 50);
  ellipse(x2AtasTirai2 - 427, 0, 45, 35);
 
}
