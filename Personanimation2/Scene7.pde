
void scene7(){
  tulisanCredit = createFont("typwrng.ttf",18);
  textFont(tulisanCredit);
  frameRate(60);
  runScene7();
}

void runScene7(){
  background(0);
  //translate(width/2,height/2);
  
  fill(255);
  textAlign(CENTER);
  text("D i b u a t  O l e h",450, 300+x);
  
  textAlign(CENTER);
  text("Personanimation",450, 350+x);
  
  textAlign(CENTER);
  text("19523064",450, 440+x);
  
  textAlign(CENTER);
  text("Nurastuti Wijareni",450, 460+x);
  
  textAlign(CENTER);
  text("19523090",450, 520+x);  
  textAlign(CENTER);
  text("Muhammad Sayyid Tsabit Anfaresi",450, 540+x);
  
  textAlign(CENTER);
  text("19523168",450, 600+x);  
  textAlign(CENTER);
  text("Athiya Mutiara Denasfi",450, 620+x);
  
  textAlign(CENTER);
  text("Grafika dan Multimedia",450, 680+x);
  textAlign(CENTER);
  text("Universitas Islam Indonesia",450,700+x);
  textAlign(CENTER);
  text("2021",450, 720+x);  
  
  if(x<height-250){
    x = x - 1 ;
  }else{
  exit();}
}
