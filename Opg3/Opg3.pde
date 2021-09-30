int r=-300;                   //definere r

void setup() {
  size(400, 600);             // sætter størrelsen på mit canvas
}

void draw() {
  background(225);           //sætter baggrund til at være næsten kridhvid
  
  translate(200+r,300);
  r++; 
  if(r>300) {                //nulstiller r 
    r=-300;
  }
  
  for(int i=1;i<width+600;i++) {  //i definere hvor mange der skal være 
                                  // width bestemmer hvor langt den må går
    if(i % 600==0) {              // til hvornår den skal stope 
      drawWheel(i-600,0);
    }
  }
}
  


void drawWheel(int x,int y) {    //definere cirklen 
  pushMatrix();
  rotate(frameCount/30.0);
  circle(x+0,y-0,150);
  line(x+0,y-(-75),x+0,y-75);
  line(x+(-75),y-0,x+75,y-0);
  line(x+(-57.5),y-(-47.5),x+57.5,y-47.5);
  line(x+(-57.5),y-47.5,x+57.5,y-(-47.5));
  popMatrix();
}

// mange er funktionene er tage fra CHrisbruhn Github med ejne tal. 
