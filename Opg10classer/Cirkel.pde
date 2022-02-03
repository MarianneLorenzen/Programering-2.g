class Cirkel {
  // klassens attributter/ tilstand
  float x, y;
  float dia;                                        // opgave 7. 

  //konstroktøren
  Cirkel() {
    this.x = random(600);                           // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);
    this.dia = random(100);                         // opgave 7.
  }

  // klassens metoder
  
  // tegn firkant på canvas
  void drawCirkel() {
    fill(random(256),random(256),random(256));      // opgave 5.  
    circle(x, y, dia);                              // opgave 7. 
  }
  
}
