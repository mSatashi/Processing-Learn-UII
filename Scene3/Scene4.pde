/* copyright : Personanimation
   Tugas Besar Grafika Multimedia-E
   Informatika 2019
*/
   
   
PFont tulisan,tulisan2;
int time = 1;

void setup(){
  size(900,600);
  frameRate(20);
}

void draw(){
  translate(width/2,height/2);
  background(255);
  //backGround2();
  backGround1();
  scene3();
}

///
void scene3(){
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
  fill(#F7DE4B);
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
  fill(#F7DE4B);
  arc(300,-10,192,180,PI, TWO_PI,CHORD);
  
  rectMode(CENTER);
  fill(#903906);
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
  fill(#F7DE4B);
  translate(180,140);
  rotate(radians(45));
  rect(40,-40,40,100,10,20,20,0);
  popMatrix();
  
  tanganGerak(time);
  
  //tangan kiri
  //rect(375,140,40,120,20,20,20,0);
  pushMatrix();
  fill(#F7DE4B);
  translate(375,140);
  rotate(radians(-30));
  rect(-45,-10,40,120,20,20,20,0);
  popMatrix();
  
  rect(385,225,40,120,20,20,20,0);
  
}

void tanganGerak(int t){

  if(t%50==0 | t%60==0){
      fill(#F7DE4B);
      pushMatrix();
      translate(170,140);
      rotate(radians(-45));
      rect(-55,-30,40,120,0,0,20,20);
      fill(#F7D6BB);
      ellipse(-35,-50,40,40);
      popMatrix();
    
  }
  else{

      fill(#F7DE4B);
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
  fill(#5391FA);
  rect(0,0,900,600);
  
  tulisan = createFont("Gill Sans MT Bold",36);
  textFont(tulisan);
  fill(255);
  
  
  
  String s = "5 Hal yang perlu dilakukan saat puasa Ramadhan";
  text(s,-400,-200);
  String niat = "1. Niat";
  text(niat,-350,-154);
  //
  String sahur = "2. Sahur di akhir waktu dan";
  String berbuka = "berbuka di awal waktu";
  text(sahur,-350,-108);
  text(berbuka,-310,-72);
  
  //
  String nafsu = "3. Menahan hawa nafsu";
  text(nafsu,-350,-26);
  
  //
  String kajian = "4. Mengikuti kajian agama";
  text(kajian,-350, 20);
  
  //
  String amal = "5. Memperbanyak amal shalih";
  text(amal,-350, 66);
}
