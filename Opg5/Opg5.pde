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
  text("H P Hansensgade 41 ",110,100);
  text("6200 Aabenraa", 130,120);
  text("TLF: 96 13 21 40",125,140);
  text("E-mail: Aabernaa@Løvbjerg.dk", 70,160);
  text("CVR-nr: 17888749",125,190);
  
  line(10,200,390,200);
  
  text("Antal",20,230);
  text("Vare",100,230);
  text("Pr. stk", 190,230);
  text("Total",300,230);
  
  // Bananer men pris antal og fuld pris
  int antal1 = 2;
  text(antal1,20,260);
  text("Bananer",100,260);
  int pris1 = 2;
  text(pris1,230,260);
  
  int fuldpris1 = pris1 * antal1;
  text(fuldpris1,300,260);
  text("kr.",320,260);
  
  // Vindruer med pris antal og fuldpris 
    int antal2 = 3;
  text(antal2,20,280);
  text("Vindruer",100,280);
  int pris2 = 14;
  text(pris2,220,280);
  
  int fuldpris2 = pris2 * antal2;
  text(fuldpris2,290,280);
  text("kr.",320,280);
  
  text("--------------",150,310);
  //fuld pris 
  text("Fuld pris", 20,340);
  int endligPris = fuldpris1 + fuldpris2;
  text(endligPris,290,340);
  text("kr.",320,340);
  
  float moms = beregnMomsSelv(endligPris);                // defiere udregningernfor at finde frem til beløb med moms. 
  text(moms,290,390);
  text("Heraf moms",20,390);
  
  float belobMoms = beregnUdenMoms(endligPris);           // defiere udregningernfor at finde frem til beløb uden moms. 
  text(belobMoms,290,410);
  text("Beløb uden moms",20,410);
  
  int day =day();
  int månede = month();
  int år = year();
  int time = hour();
  int minut = minute();
  
  text("Tak fordi du handlede i Løvbjerg",60,500);
  
  text("Betjænt af: Marianne L.",20,560);
  text("Ks.      1", 20,580);
  text("Bon:  13165534", 95,580);
  text(day,235,580);  
  text("-",250,580);
  text(månede,257,580);
  text("-",280,580);
  text(år,290,580);
  text(time,340,580);
  text(".",360,580);
  text(minut,370,580);
  
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
