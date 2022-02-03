class Firkant {
  // klassens attributter/ tilstand
  float x, y;
  float sid;                                        // opgave 7. 

  //konstroktøren
  Firkant() {
    this.x = random(600);                           // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);                           // opgave 7. 
    this.sid = random(100);
  }

  // klassens metoder
  
  // tegn firkant på canvas
  void drawFirkant() {
    fill(random(256),random(256),random(256));      // opgave 2. 
    square(x, y, sid);                              // opgave 7. 
  }
  
}
