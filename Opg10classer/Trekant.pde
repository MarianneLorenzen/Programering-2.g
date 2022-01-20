class Trekant {
  // klassens attributter/ tilstand
  float x, y,x1,y1,x2,y2;

  //konstroktøren
  Trekant() {
    this.x = random(600);             // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);
    this.x1 = random(600);            // find to tilføldige værdier inden for canvas størrelsen
    this.y1 = random(400);
    this.x2 = random(600);            // find to tilfældige værdier inden for canvas størrelsen
    this.y2= random(400);
  }

  // klassens metoder
  
  // tegn firkant på canvas
  void drawTrekant() {
    fill(random(255),random(255),random(255));      // opgave 6. 
    triangle(x, y,x1,y1,x2,y2);
  }
  
}
