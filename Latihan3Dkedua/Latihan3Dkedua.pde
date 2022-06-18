void setup(){
  size(600,600,P3D);
}


void draw(){
  background(255);
  
  translate(width/2,height/2,0);
  
  rotateX(mouseY * 0.05);
  rotateY(mouseX * 0.05);
  
  line(0,0,0,250,0,0);
  fill(0,0,255);
  text("Sumbu X", 200,15,0);
  
  line(0,0,0,0,240,0);
  fill(0,0,255);
  rotate(radians(90));
  text("Sumbu Y", 190,15,0);
  rotate(radians(-90));
  
  line(0,0,0,0,0,240);
  fill(0,0,255);
  rotateY(radians(90));
  text("Sumbu Z",-240,15,0);
  rotateY(radians(-90));
  
  fill(0,255,0);
  
  beginShape();
  vertex(50,50,50);
  vertex(200,50,50);
  vertex(50,200,20);
  endShape(CLOSE);
}
