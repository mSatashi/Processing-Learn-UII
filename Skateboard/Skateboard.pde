void setup(){
  size(800,600,P3D);
}


void draw(){
  background(0);
  
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
  
  
  beginShape();
  vertex(-100,15,30);
  vertex(-100,15,-30);
  vertex(100,15,-30);
  vertex(100,15,30);
  endShape(CLOSE);
  //
  fill(23,21,125);
  beginShape();
  vertex(-100,5,30);
  vertex(-100,5,-30);
  vertex(100,5,-30);
  vertex(100,5,30);
  endShape(CLOSE);
  
  //
  fill(128,3,0);
  beginShape();
  vertex(-100,15,30);
  vertex(100,15,30);
  vertex(100,5,30);
  vertex(-100,5,30);
  endShape(CLOSE);
  
  beginShape();
  vertex(-100,15,-30);
  vertex(100,15,-30);
  vertex(100,5,-30);
  vertex(-100,5,-30);
  endShape(CLOSE);
  
  beginShape();
  vertex(-100,15,30);
  vertex(-120,25,30);
  vertex(-120,18,30);
  vertex(-100,5,30);
  endShape(CLOSE);
  
  beginShape();
  vertex(-100,15,-30);
  vertex(-120,25,-30);
  vertex(-120,18,-30);
  vertex(-100,5,-30);
  endShape(CLOSE);
  
  beginShape();
  vertex(100,15,30);
  vertex(120,25,30);
  vertex(120,18,30);
  vertex(100,5,30);
  endShape(CLOSE);
  
  beginShape();
  vertex(100,15,-30);
  vertex(120,25,-30);
  vertex(120,18,-30);
  vertex(100,5,-30);
  endShape(CLOSE);
  
  beginShape();
  vertex(-120,18,30);
  vertex(-120,25,30);
  vertex(-120,25,-30);
  vertex(-120,18,-30);
  endShape(CLOSE);
  
  beginShape();
  vertex(120,18,30);
  vertex(120,25,30);
  vertex(120,25,-30);
  vertex(120,18,-30);
  endShape(CLOSE);
  //
  fill(0,0,255);
  
  beginShape();
  vertex(-100,15,30);
  vertex(-120,25,30);
  vertex(-120,25,-30);
  vertex(-100,15,-30);
  endShape(CLOSE);
  
  beginShape();
  vertex(100,15,30);
  vertex(120,25,30);
  vertex(120,25,-30);
  vertex(100,15,-30);
  endShape(CLOSE);
  
  //
  fill(23,21,125);
  
  beginShape();
  vertex(-100,5,30);
  vertex(-120,18,30);
  vertex(-120,18,-30);
  vertex(-100,5,-30);
  endShape(CLOSE);
  
  beginShape();
  vertex(100,5,30);
  vertex(120,18,30);
  vertex(120,18,-30);
  vertex(100,5,-30);
  endShape(CLOSE);
  
  
  //roda belakang 1
  int r =10;
  int sides = 20;
  float angle = 360/sides;
  
  fill(14,132,39);
  beginShape();
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x+80,y,31);
  }
  endShape(CLOSE);
  
  beginShape();
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x+80,y,36);
  }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x+80,y,31);
    vertex(x+80,y,36);
  }
  endShape(CLOSE);
  
  //roda belakang 2
  
  beginShape();
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x+80,y,-31);
  }
  endShape(CLOSE);
  
  beginShape();
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x+80,y,-36);
  }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x+80,y,-31);
    vertex(x+80,y,-36);
  }
  endShape(CLOSE);
  
  //roda depan 1
  beginShape();
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x-80,y,31);
  }
  endShape(CLOSE);
  
  beginShape();
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x-80,y,36);
  }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x-80,y,31);
    vertex(x-80,y,36);
  }
  endShape(CLOSE);
  
  //roda depan 2
  beginShape();
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x-80,y,-31);
  }
  endShape(CLOSE);
  
  beginShape();
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x-80,y,-36);
  }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
  for (int i =0; i< sides; i++){
    float x = cos( radians( i*angle))*r;
    float y = sin( radians( i*angle))*r;
    vertex(x-80,y,-31);
    vertex(x-80,y,-36);
  }
  endShape(CLOSE);
  
  //tulisan putih
  fill(255);
  rotateX(radians(-270));
  text("Sayyid_19523090",-90,25,0);
  //rotateZ(radians(90));
  //rotateX(radians(90));
  
 
  
}
