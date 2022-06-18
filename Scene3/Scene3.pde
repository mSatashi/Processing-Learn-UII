void backGround2(){
  tangan2();
  //body
  rectMode(CENTER);
  fill(#F7DE4B);
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
  fill(#F7DE4B);
  arc(0,-10,192,180,PI, TWO_PI,CHORD);
  
  rectMode(CENTER);
  fill(#903906);
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
  fill(#F7DE4B);
  translate(-120,140);
  rotate(radians(45));
  rect(40,-40,40,100,10,20,20,0);
  popMatrix();
  
  tanganGerak2(time);
  
  //tangan kiri
  //rect(375,140,40,120,20,20,20,0);
  pushMatrix();
  fill(#F7DE4B);
  translate(75,140);
  rotate(radians(-30));
  rect(-45,-10,40,120,20,20,20,0);
  popMatrix();
  
  rect(85,225,40,120,20,20,20,0);
  
}

void tanganGerak2(int t){

  if(t%50==0 | t%60==0){
      fill(#F7DE4B);
      pushMatrix();
      translate(-110,140);
      rotate(radians(-45));
      rect(-55,-30,40,120,0,0,20,20);
      fill(#F7D6BB);
      ellipse(-35,-50,40,40);
      popMatrix();
    
  }
  else{

      fill(#F7DE4B);
      pushMatrix();
      translate(-110,140);
      rotate(radians(-30));
      rect(-55,-30,40,120,0,0,20,20);
      fill(#F7D6BB);
      ellipse(-35,-50,40,40);
      popMatrix();
  }
}
