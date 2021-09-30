void setup() {
  size(400, 600); // sætter størrelsen på mit canvas
}

void draw() {
  background(225); //sætter baggrund til at være næsten kridhvid
  
// udgøre anstigtet og hatten på figuren 
fill(255,153,102);
circle(200,350,250);
strokeWeight(15);  // Thicker
fill(0);
square(125,100,150);
strokeWeight(15);  // Thicker
line(50,250,350,250);

//udgøre det venstre øje 
noFill();
pushMatrix();
translate(155,310);
rotate(frameCount/10.0);
strokeWeight(1);  // thin
fill(255,255,255);
circle(0,0,70);
fill(0);
circle(0,10,40);
fill(255,255,255);
circle(0,15,15);
popMatrix();

//udgøre det højre øje 
pushMatrix();
translate(245,310);
rotate(frameCount/10.0);
fill(255,255,255);
circle(0,0,70);
fill(0);
circle(0,-10,40);
fill(255,255,255);
circle(0,-15,15);
popMatrix();

//udgøre næsen 
fill(250,0,0);
circle(200,355,75);

//udgøre munden og tungen 
fill(0);
arc(200,400,150,75,0, PI,CHORD);
fill(250,0,0);
arc(200,420,75,100,0, PI,CHORD);

}
//her kan man opslå de forskellige komandoer(https://processing.org/reference/)
//her kan man finde farverne (https://www.rapidtables.com/web/color/RGB_Color.html)
