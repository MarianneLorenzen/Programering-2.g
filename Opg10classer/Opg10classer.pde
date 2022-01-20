// initiering af variablen f
Firkant f;
Cirkel c;
Rekdangel r;
Trekant t;

void setup() {
  size (600, 400);
  frameRate(5);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  c = new Cirkel ();
  r = new Rekdangel();
  t = new Trekant();
  // kald metoden generate som laver en tilfældig x og y pos
  //f.generate();
  // tegner firkanten og cirkler på canvas
  f.drawFirkant();
  c.drawCirkel();
  r.drawRect();
  t.drawTrekant();
}
