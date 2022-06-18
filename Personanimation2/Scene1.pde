 void scene1()
{  
 text = createFont("Jojoba.otf",55); 
 //popMatrix();
 runScene1();
}  
  
void runScene1()
{

   if(xWaktu <= 60*10){
    latarOpening();
    tangankiriscene1();
    tangankananscene1();
    kakikiriscene1();
    kakikananscene1();
    peoplescene1();
    papantulisscene1();
    petunjuk();
    //tirai1scene1();
    //tirai2scene1();
    //Geser Kiri Tirai 1
 
    if(xTirai+450>=0){
      tirai1scene1(xTirai, xGaris, xPersegi, xAtasTirai);
      xWaktu++;
      xTirai = xTirai - 5;
      xGaris = xGaris - 5;
      xPersegi = xPersegi - 5;
      xAtasTirai = xAtasTirai - 5;
      println(xTirai);
    }
    
    if(xTirai2-450 <=900){
      tirai2scene1( xTirai2, xGaris2, xPersegi2, xAtasTirai2);
      xTirai2 = xTirai2 + 5;
      xGaris2 = xGaris2 + 5;
      xPersegi2 = xPersegi2 + 5;
      xAtasTirai2 = xAtasTirai2 + 5;
    }
    
    
   xWaktu++;
 }
 print(xTirai2);
 print(xGaris2);
 print(xPersegi2);
 print(xAtasTirai2);
}



void latarOpening(){
    noStroke();
    fill(#F0E50A);
    rect(0,0,1080,500);
    fill(#8E4E00);
    rect(0,500,1080,720);
}

void tangankiriscene1(){
  noStroke();
  fill(#F7D6BB);
  ellipse(40, 403, 25, 25);//tangan kiri cowo
  fill(#fdc689);
  quad(95, 310, 95, 360, 55, 410, 30, 390); //lengan kiri cowo 
}  

void tangankananscene1(){
  noStroke();
  fill(#F7D6BB);
  ellipse(295, 403, 25, 25); //tangan kanan cowo
  fill(#fdc689);
  quad(240, 310, 240, 360, 275, 410, 300, 390); //lengan kanan 
  

}  
 

void kakikiriscene1(){
  noStroke();
  fill(#F7D6BB);
  rect(125,515,24,40);//cowo
  ellipse(137,555,24,24);

}

void kakikananscene1(){
  noStroke();
  fill(#F7D6BB);
  rect(185,515,24,40);//cowo
  ellipse(197,555,24,24);

}



 ///////////////LANANG/////////////////  
  
void peoplescene1()
{
  noStroke();
  fill(#F7D6BB);
  ellipse(165, 220, 150, 150); //kepala muka
  quad(152, 293, 150, 314, 182, 314, 180, 293); // leher
 
  ellipse(90, 230, 20, 25);//telinga kiri
  ellipse(240, 230, 20, 25);//telinga kanan

  //fill(0);
  //rect(173, 80, 153, 80); //Peci kotak
 
  //peci bunder coklat
  fill(#624C20);
   arc(165, 205, 150, 135, -PI,0); 
  fill(#9B8049);
   stroke(#9B8049);
   strokeWeight(6);
   line(94, 190, 235, 190);

 
 
  // jenggot
  noStroke();
  fill(0);
   triangle(152, 288, 182, 288 ,167, 298); 
 
  //sarung
  strokeWeight(3);
  fill(#8c6239);
  beginShape();
   vertex(94, 420);
   vertex(89, 530);
   quadraticVertex(165, 550, 244, 530);
   vertex(239, 420);
  endShape(CLOSE);
 
  //garis sarung
  stroke(#79471F); 
  line(115, 425, 115, 535);//vertikal
  line(135, 425, 135, 536);//vertikal
  line(205, 425, 205, 536);//vertikal
  line(220, 425, 220, 534);//vertikal
 
  line(93, 455, 239, 455);//horizontal
  line(92, 465, 240, 465);//horizontal 
  line(91, 500, 241, 500);//horizontal  
  line(90, 520, 242, 520);//horizontal 
 
  noStroke();
  fill(#fdc689);
  rect(93, 310, 147, 120);//baju
  quad(93, 310, 240, 310, 182, 303, 150, 303);//PUNDAK
  bezier(93, 430, 135, 440, 198, 440, 240, 430); //lengkungan bawah baju

 
  noStroke();
  fill(#79471F); 
  bezier(141, 303, 151, 318, 180, 318, 190, 303);//lingakaran baju leher

  stroke(#79471F);
  line(155, 314, 155, 435);//garis tengah
  
  noStroke();//kancing baju
  fill(#5A3210);
  ellipse(165, 325, 8, 8);
  ellipse(165, 355, 8, 8);
  ellipse(165, 385, 8, 8);
  ellipse(165, 415, 8, 8); 
  
 
  fill(255); // mata putih
  stroke(0);
  strokeWeight(0.5);
  ellipse(135, 230, 26, 16);
  ellipse(195, 230, 26, 16);
 
  fill(0); // mata hitam
  ellipse(135, 230, 10, 10);
  ellipse(195, 230, 10, 10);
 
  //stroke(0);
  fill(255); //mulut
  noStroke();
  strokeWeight(3);
  bezier(143, 264, 155, 280, 180, 280, 192, 264);
  
  //alis 
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(125, 213, 127, 209, 143, 209, 145, 213);
  bezier(185, 213, 187, 209, 203, 209, 205, 213);

} 
 
 void papantulisscene1(){
   stroke(0);
   strokeWeight(4);
   line(350, 100, 610, 70);
   line(845, 100, 610, 70);
   fill(#6F4A00);
   noStroke();
   ellipse(610, 75, 20, 20);
   stroke(#DEB624);
   strokeWeight(10);
   fill(#106204);//hijau
   rect(340, 100, 515, 400, 20);
   
   textFont(text);
   fill(255);
   textAlign(CENTER);
   text("Assalamu'alaikum", 600, 240);
   text("Warahmatullahi", 600, 310);
   text("Wabarakatuh", 600, 380);
 }
   
void petunjuk()

{
  stroke(#674005);
  strokeWeight(2);
  line(290, 403, 340, 390);
}

void tirai1scene1(float xTirai, float xGaris, float xPersegi, float xAtasTirai)
{
  
  noStroke();
  fill(#950608);
  rect(xPersegi, 0, 450, 570);
  
  fill(#950608);
  ellipse(xTirai, 570, 60, 50);
  ellipse(xTirai+60, 570, 60, 50);
  ellipse(xTirai+120, 570, 60, 50);
  ellipse(xTirai+180, 570, 60, 50);
  ellipse(xTirai+240, 570, 60, 50);
  ellipse(xTirai+300, 570, 60, 50);
  ellipse(xTirai+360, 570, 60, 50);
  ellipse(xTirai+412, 570, 45, 35);
  
  stroke(0);
  strokeWeight(1);
  line(xGaris, 575, xGaris, 0);
  line(xGaris+60, 575, xGaris+60, 0);
  line(xGaris+120, 575, xGaris+120, 0);
  line(xGaris+180, 575, xGaris+180, 0);
  line(xGaris+240, 575, xGaris+240, 0);
  line(xGaris+300, 575, xGaris+300, 0);
  line(xGaris+360, 575, xGaris+360, 0);
  line(xGaris+405, 575, xGaris+405, 0);

  fill(#760A0B);
  ellipse(xAtasTirai, 0, 210, 200);
  ellipse(xAtasTirai + 135, 0, 60, 50);
  ellipse(xAtasTirai + 195, 0, 60, 50);
  ellipse(xAtasTirai + 255, 0, 60, 50);
  ellipse(xAtasTirai + 315, 0, 60, 50);
  ellipse(xAtasTirai + 375, 0, 60, 50);
  ellipse(xAtasTirai + 427, 0, 45, 35);  

 
}

void tirai2scene1(float xTirai2, float xGaris2, float xPersegi2, float xAtasTirai2)
{
  
  noStroke();
  fill(#950608);
  rect(xPersegi2, 0, 535, 570);
  
  fill(#950608);
  ellipse(xTirai2, 570, 60, 50);
  ellipse(xTirai2-60, 570, 60, 50);
  ellipse(xTirai2-120, 570, 60, 50);
  ellipse(xTirai2-180, 570, 60, 50);
  ellipse(xTirai2-240, 570, 60, 50);
  ellipse(xTirai2-300, 570, 60, 50);
  ellipse(xTirai2-360, 570, 60, 50);
  ellipse(xTirai2-412, 570, 45, 35);
  
  stroke(0);
  strokeWeight(1);
  line(xGaris2, 575, xGaris2, 0);
  line(xGaris2-60, 575, xGaris2-60, 0);
  line(xGaris2-120, 575, xGaris2-120, 0);
  line(xGaris2-180, 575, xGaris2-180, 0);
  line(xGaris2-240, 575, xGaris2-240, 0);
  line(xGaris2-300, 575, xGaris2-300, 0);
  line(xGaris2-360, 575, xGaris2-360, 0);
  line(xGaris2-405, 575, xGaris2-405, 0);

  
  fill(#760A0B);
  ellipse(xAtasTirai2, 0, 210, 200);
  ellipse(xAtasTirai2 - 135, 0, 60, 50);
  ellipse(xAtasTirai2 - 195, 0, 60, 50);
  ellipse(xAtasTirai2 - 255, 0, 60, 50);
  ellipse(xAtasTirai2 - 315, 0, 60, 50);
  ellipse(xAtasTirai2 - 375, 0, 60, 50);
  ellipse(xAtasTirai2 - 427, 0, 45, 35);
 
}
