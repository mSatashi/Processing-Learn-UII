PFont tulisan, tulisan2,tulisan3,tulisan4;
int time=1;

void setup() {
  size(900, 600);
  smooth();
  tulisan = createFont("Documenta.otf",35);
  tulisan2 = createFont("Jojoba.otf",23);
  tulisan3 = createFont("CuteNotes.ttf",50);
  tulisan4 = createFont("Poweto.ttf",25);
 }

void draw() { 
  
//layar atas
  fill(174, 199, 129);
  noStroke();
  rect(0,0,900,450);

//layar bawah
  fill(209, 198, 113);
  noStroke();
  rect(0,450,900,150);
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
  text("Do's During Ramadhan", 130, 85);
  textFont(tulisan2);
  fill(000000);
  text("(Hal-hal yang boleh dilakukan saat Ramadhan)", 350, 125);
}


void orang()
{
  noStroke();
  fill(#F7D6BB);
  ellipse(125, 353, 25, 25);//tangan kiri cowo
   fill(#fdc689);
  quad(180, 260, 180, 310, 140, 360, 115, 340); //lengan kiri cowo
  
   noStroke();
  fill(#F7D6BB);
  ellipse(375, 353, 25, 25); //tangan kanan cowo
  fill(#fdc689);
  quad(325, 260, 325, 310, 360, 360, 385, 340); //lengan kanan 
  
    fill(#F7D6BB);
  rect(210,465,24,40);//cowo
  ellipse(222,505,24,24);
  
   fill(#F7D6BB);
  rect(270,465,24,40);//cowo
  ellipse(282,505,24,24);
  
  noStroke();
  fill(#F7D6BB);
  ellipse(250, 170, 150, 150); //kepala muka
  quad(237, 243, 235, 264, 267, 264, 265, 243); // leher
 
  ellipse(175, 180, 20, 25);//telinga kiri
  ellipse(325, 180, 20, 25);//telinga kanan

  //fill(0);
  //rect(173, 80, 153, 80); //Peci kotak
 
  //peci bunder coklat
  fill(#624C20);
   arc(250, 155, 150, 135, -PI,0); 
  fill(#9B8049);
   stroke(#9B8049);
   strokeWeight(6);
   line(179, 140, 320, 141);

 
 
  // jenggot
  noStroke();
  fill(0);
   triangle(237, 238, 267, 238 ,252, 248); 
 
  //sarung
  strokeWeight(3);
  fill(#8c6239);
  beginShape();
   vertex(179, 370);
   vertex(174, 480);
   quadraticVertex(250, 500, 329, 480);
   vertex(324, 370);
  endShape(CLOSE);
 
  //garis sarung
  stroke(#79471F); 
  line(200, 375, 200, 485);//vertikal
  line(220, 375, 220, 486);//vertikal
  line(290, 375, 290, 486);//vertikal
  line(305, 375, 305, 484);//vertikal
 
  line(178, 405, 324, 405);//horizontal
  line(177, 415, 325, 415);//horizontal 
  line(176, 450, 326, 450);//horizontal  
  line(175, 460, 327, 460);//horizontal 
 
  noStroke();
  fill(#fdc689);
  rect(178, 260, 147, 120);//baju
  quad(178, 260, 325, 260, 267, 253, 235, 253);//PUNDAK
  bezier(178, 380, 220, 390, 283, 390, 325, 380); //lengkungan bawah baju

 
  noStroke();
  fill(#79471F); 
  bezier(226, 253, 236, 268, 265, 268, 275, 253);//lingakaran baju leher

  stroke(#79471F);
  line(240, 264, 240, 385);//garis tengah
  
  noStroke();//kancing baju
  fill(#5A3210);
  ellipse(250, 275, 8, 8);
  ellipse(250, 305, 8, 8);
  ellipse(250, 335, 8, 8);
  ellipse(250, 365, 8, 8); 
  
 
  fill(255); // mata putih
  stroke(0);
  strokeWeight(0.5);
  ellipse(220, 180, 26, 16);
  ellipse(280, 180, 26, 16);
 
  fill(0); // mata hitam
  ellipse(220, 180, 10, 10);
  ellipse(280, 180, 10, 10);
 
  //stroke(0);
  fill(255); //mulut
  noStroke();
  strokeWeight(3);
  bezier(228, 214, 240, 230, 265, 230, 277, 214);
  
  //alis 
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(210, 163, 212, 159, 228, 159, 230, 163);
  bezier(270, 163, 272, 159, 288, 159, 290, 163);

} 

  void konten1(){
  textFont(tulisan3);
  fill(000000);
  text("1", 400, 240);
  
  textFont(tulisan4);
  fill(000000);
  text("Niat", 460, 230);
  }
  
  void konten2(){
  textFont(tulisan3);
  fill(000000);
  text("2", 400, 300);
  
  textFont(tulisan4);
  fill(000000);
  text("Sahur diakhir waktu dan berbuka", 460, 280);
  text("diawal waktu", 460, 300);
  }
  
  void konten3(){
  textFont(tulisan3);
  fill(000000);
  text("3", 400, 360);
  
  textFont(tulisan4);
  fill(000000);
  text("Menahan hawa nafsu", 460, 350);

  }
  
  void konten4(){
  textFont(tulisan3);
  fill(000000);
  text("4", 400, 420);
  
  textFont(tulisan4);
  fill(000000);
  text("Mengikuti kajian agama", 460,410);
  }
  
  void konten5(){
  textFont(tulisan3);
  fill(000000);
  text("5", 400, 480);
  
  textFont(tulisan4);
  fill(000000);
  text("Memperbanyak amal shalih", 460, 470);
}
