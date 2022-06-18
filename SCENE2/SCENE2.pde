PFont tulisan, tulisan2;
int time=1;

void setup() {
  size(900, 600);
  smooth();
  tulisan = createFont("KGWhatATime.ttf",75);
  tulisan2 = createFont("Sansation_Regular.ttf",18);
}

void draw() { 
//layar atas
  fill(172, 230, 200);
  noStroke();
  rect(0,0,900,450);

//layar bawah
  fill(222, 172, 230);
  noStroke();
  rect(0,450,900,150);

//bulan sabit
  fill(255, 255, 150);
  ellipse(240, 100, 130, 130); 
  fill(172, 230, 200);
  ellipse(265, 95, 110, 110);

//title
  textFont(tulisan);
  fill(181, 114, 164);
  text("Puasa Ramadhan", 260, 120);
  
  sceneDua();
 }
 
void papankonten(){
//papan konten
  fill(255, 255, 150);
  rect(100,220,400,300,10);
  fill(172, 230, 200);
  rect(120,240,360,260,10);
   fill(181, 114, 164);
  ellipse(110,230,50,50);
  ellipse(490,510,50,50);
}

void sceneDua(){
  papankonten();
  orang(); 
if((time>100) && (time<=500)){
 kontensatu();
} 
if((time>500) && (time<=1100)){
  kontendua();
}
if((time>1100) && (time<=1800)){
  mainkonten();
}
if(time>1800){
exit();}

 time++;
}

void kontensatu(){
  textFont(tulisan2);
  fill(#734c21);
  text("Puasa adalah dimana manusia menahan", 135, 340);
  text("diri dari makan, minum, dan perbuatan",142,370);
  text("(hawa nafsu).",250,400);
}

void kontendua(){
  textFont(tulisan2);
  fill(#734c21);
  text("Ramadhan adalah bulan kesembilan dalam", 123, 340);
  text("kalender Islam dimana umat Muslim",150,370);
  text("menjalankan salah satu rukun islam",150,400);
  text("untuk beribadah Puasa selama 30 hari.",145,430);
}

void mainkonten(){
  textFont(tulisan2);
  fill(#734c21);
  text("Puasa Ramadhan adalah Ibadah Puasa", 140, 330);
  text("yang dilakukan oleh umat Muslim selama", 130,360);
  text("bulan Ramadhan dalam menjalankan",150,390);
  text("rukun Islam yang ketiga.",200,420);
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
