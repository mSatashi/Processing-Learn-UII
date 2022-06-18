void setup(){
  size(800,600);
  background(255);
  
}

void draw(){
  translate(width/2,height/2);
  people1();
}

void people1(){
  //Badan
  fill(168, 218, 220);
  rectMode(CENTER);
  noStroke();
  rect(-200,85,70,100);
  
  //ornamen
  stroke(0);
  line(-200,35,-200,135);
  
  
  //Kepala
  fill(255, 215, 186);
  noStroke();
  ellipse(-200,-50,150,150);
  ellipse(-275,-40,20,25);
  ellipse(-125,-40,20,25);
  rectMode(CENTER);
  rect(-200,30,20,10);
  
  //wajah
  fill(0);
  noStroke();
  ellipse(-230,-50,10,10);
  ellipse(-170,-50,10,10);
  fill(255);
  arc(-200, -10, 50, 30, 0,PI); 
  
  //jenggot
  fill(0);
  triangle(-210,20,-190,20,-200,30);
  
  fill(232, 232, 228);
  arc(-200, -80, 140, 135, -PI,0);
  
  //tangan 
  tangan1();
  tangan2();
}

void tangan1(){
  noStroke();
  fill(168, 218, 220);
  //ellipse(-240,45,20,20);
  rect(-255,45,40,20);
  rect(-295,45,40,20);
  fill(255, 215, 186);
  ellipse(-325,45,20,20);

  
}

void tangan2(){
  noStroke();
  fill(168, 218, 220);
  ellipse(-160,45,20,20);
  rect(-145,45,40,20);
  rect(-105,45,40,20);
  fill(255, 215, 186);
  ellipse(-75,45,20,20);
}
