class Firkant {
  // klassens attributter/ tilstand
  float x, y;
  float sid;

  //konstroktøren
  Firkant() {
    this.x = random(600);             // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);
    this.sid = random(400);
  }

  // klassens metoder
  
  // tegn firkant på canvas
  void drawFirkant() {
    fill(random(255),random(255),random(255));      // opgave 2. 
    square(x, y, sid);
  }
  
}
