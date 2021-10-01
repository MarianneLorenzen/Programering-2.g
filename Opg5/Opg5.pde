//void betyder at der ikke ksla komme noget ud af funktionen og når man siger setup betyder det at 
// man sætter programrings fladen op det kunne vær ved at sige Size() elle andet der definere skærmstørelsen 
void setup(){
  size(400,600);
}

// void betyderogså fejl eller forkert
// draw skal man have med efter set op for at kunne tegne i progammet 
void draw(){
  background(255,255,255);
  
  fill(0,0,0);
  textSize(50);
  
  text("Løvbjerg",100,50);
  
  textSize(20);
  text("H P Hansensgade 41 6200 Aabenraa",20,100);
  text("tlf: 96 13 21 40",20,120);
  text("Du er blevet betjænt af: Marianne L.",20,160);
  
  line(10,180,390,180);
  
  text("Antal",20,210);
  text("Vare",100,210);
  text("Pr. stk", 190,210);
  text("Total",300,210);
  
  // Bananer men pris antal og fuld pris
  int antal1 = 2;
  text(antal1,20,240);
  text("Bananer",50,240);
  int pris1 = 2;
  
  int fuldpris1 = pris1 * antal1;
  text(fuldpris1,300,240);
  text("kr.",320,240);
  
  // Vindruer med pris antal og fuldpris 
    int antal2 = 3;
  text(antal2,20,260);
  text("Vindruer",50,260);
  int pris2 = 14;
  
  int fuldpris2 = pris2 * antal2;
  text(fuldpris2,290,260);
  text("kr.",320,260);
  
  text("--------------",150,290);
  //fuld pris 
  text("Fuld pris", 20,320);
  int endligPris = fuldpris1 + fuldpris2;
  text(endligPris,290,320);
  text("kr.",320,320);
  
  float belobMedMoms = beregnMoms(endligPris);            // defiere udregningernfor at finde frem til beløb med moms. 
  text(belobMedMoms,290,370);                             // Skriver teksten der beskriver tallet og der efter tallet der er kommet udd af udregningerne 
  
  float belobMoms = beregnUdenMoms(endligPris);           // defiere udregningernfor at finde frem til beløb med moms. 
  text(belobMoms,290,390);
  
  float moms = beregnMomsSelv(endligPris);                // defiere udregningernfor at finde frem til beløb med moms. 
  text(moms,290,410);
 
  int day =day();
  int månede = month();
  int år = year();
  
  text("Tak fordi du handlede i Løvbjerg",60,500);
  
  text("Dato:",200,540);
  text(day,270,540);  
  text(månede,300,540);
  text(år,320,540);
  
}

// laver en funktion der regner ud for meget beløbet med moms er. 
float beregnMoms(int belob){
  return belob*1;
}

float beregnUdenMoms(int fuldbelob){
  return fuldbelob*0.8;
}

float beregnMomsSelv (int belob){
  return belob*0.25;
}
