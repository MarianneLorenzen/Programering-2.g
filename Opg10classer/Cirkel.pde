class Cirkel {
  // klassens attributter/ tilstand
  float x, y;
  float dia;

  //konstroktøren
  Cirkel() {
    this.x = random(600);             // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);
    this.dia = random(400);
  }

  // klassens metoder
  
  // tegn firkant på canvas
  void drawCirkel() {
    fill(random(255),random(255),random(255));      // opgave 5.  
    circle(x, y, dia);
  }
  
}
