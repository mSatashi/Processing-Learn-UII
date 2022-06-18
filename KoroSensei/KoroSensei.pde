void setup(){
  size(600,400);
  background(255);
}
void draw(){
  topi();
  fill(255, 239, 20);
  stroke(5);
  ellipse(300,200, 250, 250);
  wajah();
}

void topi(){
  atasTopi();
  stroke(8);
  fill(0,0,0);
  rect(250,40,100,50);
  
}

void atasTopi(){
  fill(0,0,0);
  quad(300,0,220,30,300,60,380,30);
  
  
  
}

void wajah(){
  fill(0, 0, 0);
  ellipse(250,170,10,6);
  ellipse(350,170,10,6);
  
  fill(255);
  bezier(220,235,285,300,300,300,380,235);
  fill(255, 239, 20);
  bezier(220,235,285,255,300,255,380,235);

}
