class Rekdangel {
  // klassens attributter/ tilstand
  float x, y;
  float sid1, sid2;

  //konstroktøren
  Rekdangel() {
    this.x = random(600);             // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);
    this.sid1 = random(400);
    this.sid2 = random(400);
  }

  // klassens metoder
  
  // tegn firkant på canvas
  void drawRect() {
    fill(random(255),random(255),random(255));      // opgave 6.  
    rect(x, y, sid1, sid2);
  }
  
}
