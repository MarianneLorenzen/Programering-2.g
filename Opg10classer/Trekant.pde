class Trekant {
  // klassens attributter/ tilstand
  float x, y;                                        // opgave 7. 
  float len;

  //konstroktøren
  Trekant() {
    this.x = random(600);                           // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);
    this.len = random(100);
  }

  // klassens metoder
  
  // tegn firkant på canvas
  void drawTrekant() {
    fill(random(256),random(256),random(256));      // opgave 6. 
    pushMatrix();
    translate (x,y);
    rotate(frameCount);
    triangle(0, 0,len,0,0,len);                     // opgave 7. 
    popMatrix();
  }
  
}
