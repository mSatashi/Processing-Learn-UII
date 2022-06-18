PFont tulisan, tulisan2,tulisan3,tulisan4;
int time=1;
int awan1 = 460;
int awan2 = 350;
int awan3 = 280;
int awan4 = 170;
int awan5 = 140;

void setup() {
  size(900, 600);
  smooth();
  tulisan = createFont("Documenta.otf",35);
  tulisan2 = createFont("Jojoba.otf",25);
  tulisan3 = createFont("CuteNotes.ttf",50);
  tulisan4 = createFont("Poweto.ttf",25);
 }

void draw() { 
  
//layar atas
  fill(222, 172, 230);
  noStroke();
  rect(0,0,900,450);

//layar bawah
  fill(172, 230, 200);
  noStroke();
  rect(0,450,900,150);
  awan();
  judul();
  orang();
  scene4();
 }

void scene4(){
  if (time>200 && time<=400){
    konten1();
  }

    if (time>400 && time<=600){
      konten1();
      konten2();
  }
  
    if (time>600 && time<=800){
      konten1();
      konten2();
      konten3();
  }
  
    if (time>800 && time<=1000){
      konten1();
      konten2();
      konten3();
      konten4();
  }
  
    if (time>1000 && time<=1200){
      konten1();
      konten2();
      konten3();
      konten4();
      konten5();
  }
  
  if(time>1200){
  exit();}
  time++;
}

void judul(){
  //title
  textFont(tulisan);
  fill(000000);
  text("Don't During Ramadhan", 235, 85);
  textFont(tulisan2);
  fill(000000);
  text("(Hal yang tidak boleh dilakukan saat Ramadhan)", 350, 125);
}

void awan(){
 fill(255);
  //awan1
  stroke(255);
  rect(awan1, 80, 70, 1);
  circle(awan1+70, 70, 20);
  translate(-70, 0);
  circle(awan1+70, 70, 20);
  circle(awan1+85, 60, 15);
  translate(40,0);
  circle(awan1+85, 60, 15);
  circle(awan1+65, 55, 35);
  rect(awan1+40, 65, 50, 15);
  
  //awan2
  stroke(255);
  rect(awan2, 130, 70, 1);
  circle(awan2+70, 120, 20);
  translate(-70, 0);
  circle(awan2+70, 120, 20);
  circle(awan2+85,110, 15);
  translate(40,0);
  circle(awan2+85, 110, 15);
  circle(awan2+65, 105, 35);
  rect(awan2+40,115, 50, 15);
  
  //awan3
  stroke(255);
  rect(awan3, 50, 70, 1);
  circle(awan3+70, 40, 20);
  translate(-70, 0);
  circle(awan3+70, 40, 20);
  circle(awan3+85,30, 15);
  translate(40,0);
  circle(awan3+85, 30, 15);
  circle(awan3+65, 25, 35);
  rect(awan3+40,35, 50, 15);
  
  //awan4
  stroke(255);
  rect(awan4, 160, 70, 1);
  circle(awan4+70, 150, 20);
  translate(-70, 0);
  circle(awan4+70, 150, 20);
  circle(awan4+85, 140, 15);
  translate(40,0);
  circle(awan4+85, 140, 15);
  circle(awan4+65, 135, 35);
  rect(awan4+40,145, 50, 15);
  
  //awan5
  stroke(255);
  rect(awan5, 80, 70, 1);
  circle(awan5+70, 70, 20);
  translate(-70, 0);
  circle(awan5+70, 70, 20);
  circle(awan5+85, 60, 15);
  translate(40,0);
  circle(awan5+85, 60, 15);
  circle(awan5+65, 55, 35);
  rect(awan5+40,65, 50, 15);
  
  awan1 += -5;
  awan2 += -5;
  awan3 += -5;
  awan4 += -5;
  awan5 += -5;
  
  if(awan5<125){
    awan5=725;
  }
  if(awan4<100){
    awan4=700;
  }
  if(awan3<70){
    awan3=670;
  }
  if(awan2<40){
    awan2=640;
  }
  if(awan1<15){
    awan1=615;
  }
}

void orang(){

//tangan 
  noStroke();
  fill(#F7D6BB);
  ellipse(540, 375, 35, 35);//tangan kiri cewe
  fill(#bf884b);
  quad(590, 290, 530, 363, 555, 378, 600, 340); //lengan kiri
  
  noStroke();
  fill(#F7D6BB);
  ellipse(780, 375, 35, 35); //tangan kanan cewe
  fill(#bf884b);
  quad(730, 290, 790, 363, 765, 378, 720, 340); //lengan kanan
 
//kakikiri
  fill(#F7D6BB);
  rect(620,475,24,40);//cewe
  ellipse(632,515,24,24);
  
//kaki kanan
  fill(#F7D6BB);
  rect(680,475,24,40);//cewe
  ellipse(692,515,24,24);

  noStroke();
  fill(#bf884b);//Pakaian
  beginShape();//rokbawah
  vertex(590, 440);
  quadraticVertex(660, 450, 730, 440);
  vertex(735, 490);
  quadraticVertex(660, 500, 585, 490);
  ellipse(660, 490, 160, 40);
  endShape(CLOSE); 

 fill(#fbd2a4);//baju rompi 
 beginShape();//baju
  vertex(590, 290);
  quadraticVertex(600, 370, 585, 440);
  vertex(735, 440);
  quadraticVertex(720, 370, 730, 290);
  ellipse(660, 440, 160, 40);
  endShape(CLOSE);
 
  fill(#bf884b);
  beginShape();//baju dalam
  vertex(640, 330);
  quadraticVertex(650, 400, 635, 455);
  vertex(685, 455);
  quadraticVertex(670, 395, 680, 330);
  endShape(CLOSE);
 
 
  fill(#603913);
  beginShape();//pendeng
  vertex(590, 375);
  quadraticVertex(660, 395, 730, 375);
  vertex(730, 385);
  quadraticVertex(660, 405, 590, 385);
  ellipse(660, 390, 40, 25);
  endShape(CLOSE);
 
  fill(#CB9302);
  ellipse(650, 390, 8, 8);
  ellipse(670, 390, 8, 8);
  stroke(#CB9302);
  strokeWeight(2.5);
  line(660, 385, 660, 395);
 
 
  fill(#734c21);
  noStroke();
  ellipse(660, 210, 160, 160); //kerudung belakang
  quad(580, 210, 580, 290, 740, 290, 740, 210);
  triangle(580, 290, 660, 350, 740, 290);
 
  fill(#F7D6BB);
  ellipse(660, 230, 140, 140); //kepala muka
 
  fill(#734c21);
  arc(660, 210, 160, 145, -PI,0); //kerudung opsi2
 
 fill(#F7D6BB);
  ellipse(660, 220, 140, 80); //pembentuk kerudung
 
 
 fill(255); //mata putih
  stroke(0);
  strokeWeight(0.5);
  ellipse(630, 225, 25, 15);
  ellipse(690, 225, 25, 15);
 
 fill(0); //mata hitam
  ellipse(630, 225, 10, 10);
  ellipse(690, 225, 10, 10);
 
  stroke(0);
  noFill(); //mulut
  strokeWeight(3);
  bezier(640, 261, 653, 275, 668, 275, 682, 261);
  
  //alis 
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(620, 203, 622, 199, 638, 199, 640, 203);
  bezier(680, 203, 682, 199, 698, 199, 700, 203);
  
}

  void konten1(){
  textFont(tulisan3);
  fill(000000);
  text("1", 235, 275);
  
  textFont(tulisan4);
  fill(000000);
  text("Makan minum dengan sengaja", 290, 265);
  }
  
  void konten2(){
  textFont(tulisan3);
  fill(000000);
  text("2", 235, 375);
  
  textFont(tulisan4);
  fill(000000);
  text("Muntah dengan sengaja", 290, 365);
  }
  
  void konten3(){
  textFont(tulisan3);
  fill(000000);
  text("3", 235, 475);
  
  textFont(tulisan4);
  fill(000000);
  text("Berkata keji dan berbuat", 290, 455);
  text("maksiat", 290, 475);
  }
  
  void konten4(){
  textFont(tulisan3);
  fill(000000);
  text("4", 760, 315);
  
  textFont(tulisan4);
  fill(000000);
  text("Melakukan hal tercela", 810, 300);
  }
  
  void konten5(){
  textFont(tulisan3);
  fill(000000);
  text("5", 760, 455);
  
  textFont(tulisan4);
  fill(000000);
  text("Meninggalkan shalat", 810, 445);
  text("wajib", 810, 465);  
}
