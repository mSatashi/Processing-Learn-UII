void setup(){
  size(400,400, P3D);
}

void draw(){
  background(255);
  translate(width/2,height/2,0);
  
  rotateX(mouseY * 0.05);
  rotateY(mouseX * 0.05);
  
  //membuat sumbu X
  line(0,0,0,250,0,0);
  fill(0,0,255);
  text("Sumbu X",200,15,0);
  
  //membuat sumbu Y
  line(0,0,0,0,240,0);
  fill(0,0,255);
  rotate(radians(90));
  text("Sumbu Y", 190,15,0);
  rotate(radians(-90));
  
  //membuat sumbu Z
  line(0,0,0,0,0,240);
  fill(0,0,255);
  rotateY(radians(90));
  text("Sumbu Z", -240,15,0);
  rotate(radians(-90));
}
