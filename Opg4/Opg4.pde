// 1. opgave 
// frameFunktion bliver deklereret på linje 42-43 den man har insat void framtunktion med integers. 
// frame funktion bliver kaldt mellem linje 9, 10, 12, 13  
// Man kalder funktionen med to paramentre x og y 
void setup(){
  size(600,600);
}

void draw(){
  
      // make frame behind alien
  frameFunction(0,0);
  frameFunction(300,0);
  
  frameFunction(0,300);
  frameFunction(300,300);
  
  //her tegner vi hovedet og kroppen
  hoved(0,0);
  hoved(300,0);
 
  hoved(0,300);
  hoved(300,300);
  
  krop(0,0);
  krop(300,0);
  
  krop(0,300);
  krop(300,300);
   
  
  line(300,0,300,600);
  line(0,300,600,300);
  
  textSize(20);
  text("Sild", 135, 270);
  text("Laks", 435, 270);
  text("Torsk", 125, 570);
  text("Skrubbe", 415, 570);
  
}

void hoved(int x, int y){
  fill(255,255,255);
  circle(150+x,100+y,100);
  
  fill(0,0,0);
  ellipse(125+x, 100+y, 25, 50);
  ellipse(175+x, 100+y, 25, 50);
  
}

void krop(int x, int y){
  // make body and color black
  fill(0,0,0);
  rect(120+x,140+y,60,100);
  
  //make legs and thick
  strokeWeight(5);
  line(125+x,220+y,100+x,270+y);
  line(175+x,225+y,205+x,270+y);
  
}

void frameFunction(int x, int y ){
  fill(255,255,255);
  strokeWeight(3);
  rect(10+x,10+y,280,280);
}
