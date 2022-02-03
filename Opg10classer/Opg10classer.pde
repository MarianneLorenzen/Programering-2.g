// initiering af variablen f
Firkant f;
Cirkel c;
Rekdangel r;
Trekant t;
int whatShape=0;

void setup() {
  size (600, 400);
  frameRate(10);              //sætter farten ned så man kan nå at se hvilke fugure der kommer
}

void draw() {
  // initiering af objekterne, f, c, r og t
  f = new Firkant();
  c = new Cirkel ();
  r = new Rekdangel();
  t = new Trekant();
  // kald metoden generate som laver en tilfældig x og y pos
  //f.generate();
  // tegner alle fugurene på canvas
  if (whatShape == 0) {
    f.drawFirkant();
  } else if (whatShape==1) {
    c.drawCirkel();
  } else if (whatShape == 2) {
    r.drawRect();
  } else if (whatShape == 3) {
    t.drawTrekant();
    whatShape = 0;
  }
  whatShape ++;
}
