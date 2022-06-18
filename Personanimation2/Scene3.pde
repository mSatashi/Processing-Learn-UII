

void Scene3(){
  translate(width/2,height/2);
  latarBelakang();
  tangan2();
  //body
  tubuh();
  
  if(time%60==0){
    fill(#F7D6BB);
    ellipse(-50,24,50,30);
    ellipse(50,24,50,30);
  }
  else{
    fill(255);
    ellipse(-50,24,50,30);
    ellipse(50,24,50,30);
    fill(0);
    ellipse(-50,24,20,20);
    ellipse(50,24,20,20);

  }
 
  time++;
}


void tubuh(){
  rectMode(CENTER);
  fill(#bf884b);
  rect(0,230,150,200,50,50,0,0);
  
  //ornament
  fill(#6A2A05);
  noStroke();
  rect(0,230,5,200);
  
  ellipse(15,180,10,10);
  ellipse(15,220,10,10);
  ellipse(15,260,10,10);
  
  //leher
  rectMode(CENTER);
  fill(#E8BD9D);
  rect(0,120,50,50,0,0,40,40);
  
  //wajah
  fill(#E8BD9D);
  ellipse(-100,28,40,40);
  ellipse(100,28,40,40);
  fill(#F7D6BB);
  ellipse(0,24,200,200);
  
  fill(0);
  triangle(0,140,-15,122,15,122);
  
  //kopiah
  fill(#624C20);
  arc(0,-10,192,180,PI, TWO_PI,CHORD);
  
  rectMode(CENTER);
  fill(#9B8049);
  rect(0,-40,180,20,50,50,0,0);
  
  //mulut
  fill(255);
  arc(0, 70, 50,25,0,PI,CHORD);
}
void tangan2(){
  rectMode(CORNER);
  //tangn kanan
  //rect(180,140,40,100,20,20,0,0);

  pushMatrix();
  fill(#bf884b);
  translate(-120,140);
  rotate(radians(45));
  rect(40,-40,40,100,10,20,20,0);
  popMatrix();
  
  tanganGerak2(time);
  
  //tangan kiri
  //rect(375,140,40,120,20,20,20,0);
  pushMatrix();
  fill(#bf884b);
  translate(85,140);
  rotate(radians(-30));
  rect(-45,-10,40,120,20,20,20,0);
  popMatrix();
  
  
  pushMatrix();
  translate(85,225);
  rotate(radians(-135));
  rect(-40,0,40,120,20,0,0,0);
  fill(#F7D6BB);
  ellipse(-20,140,40,40);
  popMatrix();

}

void tanganGerak2(int t){

  if(t%50==0 | t%60==0){
      fill(#bf884b);
      pushMatrix();
      translate(-110,140);
      rotate(radians(-45));
      rect(-55,-30,40,120,0,0,20,20);
      fill(#F7D6BB);
      ellipse(-35,-50,40,40);
      popMatrix();
    
  }
  else{
      fill(#bf884b);
      pushMatrix();
      translate(-110,140);
      rotate(radians(-30));
      rect(-55,-30,40,120,0,0,20,20);
      fill(#F7D6BB);
      ellipse(-35,-50,40,40);
      popMatrix();
  }
}

void latarBelakang(){
  rectMode(CENTER);
  noStroke();
  fill(174, 199, 129);
  rect(0,0,width,height);
  fill(209, 198, 113);
  rect(0,300,width,height/2);
  
  //tulisan
  tulisan = createFont("Panic.ttf",72);
  fill(252, 251, 210);
  textFont(tulisan);
  String judul = "Do's and Don'ts";
  text(judul,0 ,-200);
  
  tulisan2 = createFont("Jojoba.otf",36);
  fill(252, 251, 210);
  textFont(tulisan2);
  String judul2 ="Ramadhan Edition";
  text(judul2, -30 ,-150);

}
