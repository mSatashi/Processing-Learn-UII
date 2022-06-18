int sides = 30;
float angle = 360/sides;

void setup (){
  size(1000,1000,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2,0);
  rotateX(mouseY*0.05);
  rotateY(mouseX*0.05);
  stroke(30);
  lights();
  
  line(0,0,0,250,0,0);
  fill(0,0,255);
  text("Sumbu X",200,15,0);
  
  line(0,0,0,0,240,0);
  fill(0,0,255);
  rotate(radians(90));
  text("Sumbu Y",190,15,0);
  rotate(radians(-90));
  
  line(0,0,0,0,0,240);
  fill(0,0,255);
  rotateY(radians(90));
  text("Sumbu Z",-240,15,0);
  rotateY(radians(-90));
  

  translate(150,150);
  silinder1();
  silinder2();
  silinder3();
  silinder4();
  silinder5();
  silinder6();
  silinder7();
  
  
}

void silinder1(){
  text("Wildan",-15,0,251);
  text("19523172",-30,15,251);

  fill(119, 129, 163);
  noStroke();
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*40;
        float y = sin(radians(i*angle))*40;
        vertex(x,y,30);
    }
  endShape(CLOSE);
  
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*40;
        float y = sin(radians(i*angle))*40;
        vertex(x,y,50);
    }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides+1; i++){
        float x = cos(radians(i*angle))*40;
        float y = sin(radians(i*angle))*40;
        vertex(x,y,30);
        vertex(x,y,50);
    }
  endShape(CLOSE);
}

void silinder2(){
  fill(119, 129, 163);
  noStroke();
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*60;
        float y = sin(radians(i*angle))*60;
        vertex(x,y,50);
    }
  endShape(CLOSE);
  
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*60;
        float y = sin(radians(i*angle))*60;
        vertex(x,y,70);
    }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides+1; i++){
        float x = cos(radians(i*angle))*60;
        float y = sin(radians(i*angle))*60;
        vertex(x,y,50);
        vertex(x,y,70);
    }
  endShape(CLOSE);
}
void silinder3(){
  fill(119, 129, 163);
  noStroke();
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*80;
        float y = sin(radians(i*angle))*80;
        vertex(x,y,70);
    }
  endShape(CLOSE);
  
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*80;
        float y = sin(radians(i*angle))*80;
        vertex(x,y,90);
    }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides+1; i++){
        float x = cos(radians(i*angle))*80;
        float y = sin(radians(i*angle))*80;
        vertex(x,y,70);
        vertex(x,y,90);
    }
  endShape(CLOSE);
}
void silinder4(){
  fill(175, 186, 222);
  noStroke();
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*20;
        float y = sin(radians(i*angle))*20;
        vertex(x,y,90);
    }
  endShape(CLOSE);
  
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*20;
        float y = sin(radians(i*angle))*20;
        vertex(x,y,190);
    }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides+1; i++){
        float x = cos(radians(i*angle))*20;
        float y = sin(radians(i*angle))*20;
        vertex(x,y,90);
        vertex(x,y,190);
    }
  endShape(CLOSE);
}
void silinder5(){
  fill(119, 129, 163);
  noStroke();
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*80;
        float y = sin(radians(i*angle))*80;
        vertex(x,y,190);
    }
  endShape(CLOSE);
  
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*80;
        float y = sin(radians(i*angle))*80;
        vertex(x,y,210);
    }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides+1; i++){
        float x = cos(radians(i*angle))*80;
        float y = sin(radians(i*angle))*80;
        vertex(x,y,190);
        vertex(x,y,210);
    }
  endShape(CLOSE);
}

void silinder6(){
  fill(119, 129, 163);
  noStroke();
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*60;
        float y = sin(radians(i*angle))*60;
        vertex(x,y,210);
    }
  endShape(CLOSE);
  
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*60;
        float y = sin(radians(i*angle))*60;
        vertex(x,y,230);
    }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides+1; i++){
        float x = cos(radians(i*angle))*60;
        float y = sin(radians(i*angle))*60;
        vertex(x,y,210);
        vertex(x,y,230);
    }
  endShape(CLOSE);
}

void silinder7(){
  fill(119, 129, 163);
  noStroke();
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*40;
        float y = sin(radians(i*angle))*40;
        vertex(x,y,230);
    }
  endShape(CLOSE);
  
  beginShape();
    for (int i = 0; i < sides; i++){
        float x = cos(radians(i*angle))*40;
        float y = sin(radians(i*angle))*40;
        vertex(x,y,250);
    }
  endShape(CLOSE);
  
  beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides+1; i++){
        float x = cos(radians(i*angle))*40;
        float y = sin(radians(i*angle))*40;
        vertex(x,y,230);
        vertex(x,y,250);
    }
  endShape(CLOSE);
}
