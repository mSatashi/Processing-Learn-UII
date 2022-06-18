void setup(){
  size(600, 400);
  
  background(255);
}

void draw(){
  fill(47, 115, 50);
  rect(0, 0, 600, 400);
  
  fill(242, 242, 24);
  quad(300,10, 20, 200, 300,390, 580,200);
  
  fill(8, 34, 120);
  ellipse(300,200, 250, 250); 
  
  fill(255);
  bezier(225,100, 278,110,360,120,415,250);
  ellipse(287,280,5,5);
  ellipse(278,289,5,5);
  ellipse(228,263,5,5);
  ellipse(248,268,5,5);
  ellipse(234,268,5,5);
}

  
