///
void Scene4(){
  translate(width/2,height/2);
  backGround1();
  person();
  
  if(time%60==0){
    fill(#F7D6BB);
    ellipse(250,24,50,30);
    ellipse(350,24,50,30);
  }
  else{
    fill(255);
    ellipse(250,24,50,30);
    ellipse(350,24,50,30);
    fill(0);
    ellipse(250,24,20,20);
    ellipse(350,24,20,20);

  }
 
  time++;
}

void person(){
  tangan();
  //body
  rectMode(CENTER);
  fill(#bf884b);
  rect(300,230,150,200,50,50,0,0);
  
  //ornament
  fill(#6A2A05);
  noStroke();
  rect(300,230,5,200);
  
  ellipse(315,180,10,10);
  ellipse(315,220,10,10);
  ellipse(315,260,10,10);
  
  //leher
  rectMode(CENTER);
  fill(#E8BD9D);
  rect(300,120,50,50,0,0,40,40);
  
  //wajah
  fill(#E8BD9D);
  ellipse(200,28,40,40);
  ellipse(400,28,40,40);
  fill(#F7D6BB);
  ellipse(300,24,200,200);
  
  fill(0);
  triangle(300,140,285,122,315,122);
  
  //kopiah
  fill(#624C20);
  arc(300,-10,192,180,PI, TWO_PI,CHORD);
  
  rectMode(CENTER);
  fill(#9B8049);
  rect(300,-40,180,20,50,50,0,0);
  
  //mulut
  fill(255);
  arc(300, 70, 50,25,0,PI,CHORD);
}

void tangan(){
  rectMode(CORNER);
  //tangn kanan
  //rect(180,140,40,100,20,20,0,0);

  pushMatrix();
  fill(#bf884b);
  translate(180,140);
  rotate(radians(45));
  rect(40,-40,40,100,10,20,20,0);
  popMatrix();
  
  tanganGerak(time);
  
  //tangan kiri
  //rect(375,140,40,120,20,20,20,0);
  pushMatrix();
  fill(#bf884b);
  translate(375,140);
  rotate(radians(-30));
  rect(-45,-10,40,120,20,20,20,0);
  popMatrix();
  
  rect(385,225,40,120,20,20,20,0);
  
}

void tanganGerak(int t){

  if(t%50==0 | t%60==0){
      fill(#bf884b);
      pushMatrix();
      translate(170,140);
      rotate(radians(-45));
      rect(-55,-30,40,120,0,0,20,20);
      fill(#F7D6BB);
      ellipse(-35,-50,40,40);
      popMatrix();
    
  }
  else{

      fill(#bf884b);
      pushMatrix();
      translate(170,140);
      rotate(radians(-30));
      rect(-55,-30,40,120,0,0,20,20);
      fill(#F7D6BB);
      ellipse(-35,-50,40,40);
      popMatrix();
  }
}

void backGround1(){
  //
  rectMode(CENTER);
  fill(166, 227, 219);
  rect(0,0,900,600);
  
  tulisan = createFont("Gill Sans MT Bold",27);
  textFont(tulisan);
  fill(255);
  
  //meja
  fill(#A76502);
  rect(-150,250,400,30,100);
  fill(#CB8925);
  rect(-150,290,350,50);
  
  //buku
  rectMode(CORNER);
  fill(#ED3E6A);
  rect(-320,140,30,95);
  fill(#29B261);
  rect(-290,140,30,95);
  fill(#EAEA4C);
  rect(-260,205,95,30);
  
  fill(60, 84, 81);
  String s = "5 Hal yang perlu dilakukan saat puasa Ramadhan";
  text(s, -100 ,-170);

  kontenScene4();
  
}

void kontenScene4(){
if (t>850 && t<=950){
      String niat = "1. Niat";
      text(niat,-150,-124);
      //
  }

    if (t>950 && t<=1050){
      String niat = "1. Niat";
      text(niat,-150,-124);
      //
      String sahur = "2. Sahur di akhir waktu dan";
      String berbuka = "berbuka di awal waktu";
      text(sahur,-150,-78);
      text(berbuka,-120,-42);
  }
  
    if (t>1050 && t<=1150){
      String niat = "1. Niat";
      text(niat,-150,-124);
      //
      String sahur = "2. Sahur di akhir waktu dan";
      String berbuka = "berbuka di awal waktu";
      text(sahur,-150,-78);
      text(berbuka,-120,-42);
    
      //
      String nafsu = "3. Menahan hawa nafsu";
      text(nafsu,-150,4);
  }
  
    if (t>1150 && t<=1250){
      String niat = "1. Niat";
      text(niat,-150,-124);
      //
      String sahur = "2. Sahur di akhir waktu dan";
      String berbuka = "berbuka di awal waktu";
      text(sahur,-150,-78);
      text(berbuka,-150,-42);
      
      //
      String nafsu = "3. Menahan hawa nafsu";
      text(nafsu,-150,4);
      
      //
      String kajian = "4. Mengikuti kajian agama";
      text(kajian,-150, 50);
  }
  
    if (t>1250 && t<=1350){
      String niat = "1. Niat";
      text(niat,-150,-124);
      //
      String sahur = "2. Sahur di akhir waktu dan";
      String berbuka = "berbuka di awal waktu";
      text(sahur,-150,-78);
      text(berbuka,-120,-42);
      
      //
      String nafsu = "3. Menahan hawa nafsu";
      text(nafsu,-150,4);
      
      //
      String kajian = "4. Mengikuti kajian agama";
      text(kajian,-150, 50);
      
      //
      String amal = "5. Memperbanyak amal shalih";
      text(amal,-150, 96);
  }
  
}
