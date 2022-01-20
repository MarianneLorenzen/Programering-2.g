// initiering af variablen f
Firkant f;
Cirkel c;
Rekdangel r;
Trekant t;

void setup() {
  size (600, 400);
  frameRate(5);              //sætter farten ned så man kan nå at se hvilke fugure der kommer 
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
  f.drawFirkant();
  c.drawCirkel();            
  r.drawRect();
  t.drawTrekant();
}
