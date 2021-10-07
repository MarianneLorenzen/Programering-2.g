//void betyder at der ikke skal komme noget ud af funktionen og når man siger setup betyder det at 
// man sætter programrings fladen op det kunne vær ved at sige Size() elle andet der definere skærmstørelsen 
void setup(){
  size(400,600);
}

// void betyder også fejl eller forkert
// draw skal man have med efter set op for at kunne tegne i progammet 
void draw(){
  background(255,255,255);  //Farver baggrund hvid
  
  fill(0,0,0);  //Farver tekst sort
  textSize(50);  //Sætter tekststørrelsen til 50
  
  text("Løvbjerg",100,50);  //Skriver overskriften Løvbjerg
  
  textSize(20);  //Ændrer tekststørrelsen
  text("H P Hansensgade 41 ",110,100);  
  text("6200 Aabenraa", 130,120);
  text("TLF: 96 13 21 40",125,140);
  text("E-mail: Aabernaa@Løvbjerg.dk", 70,160);
  text("CVR-nr: 17888749",125,190);
  // Skriver oplysninger
  
  line(10,200,390,200);   //tegner 
  
  text("Antal",20,230);
  text("Vare",100,230);
  text("Pr. stk", 190,230);
  text("Total",300,230);
  // skriver oplysninger
  
  // Bananer men pris antal og fuld pris
  int antal1 = 2;  //initiering af første antal
  text(antal1,20,260);  //skriver antallet
  text("Bananer",100,260); //skriver varenavnet
  int pris1 = 2;  //initerer prisen
  text(pris1,230,260);  //Skriver prisen
  
  int fuldpris1 = pris1 * antal1;  //initerer af den fulde pris (deklererer det som produktet af antal og pris)
  text(fuldpris1,300,260);  //Skriver fuld pris
  text("kr.",320,260);  //Skriver kr
  
  // Vindruer med pris antal og fuldpris 
    int antal2 = 3;  //initerer af andet antal
  text(antal2,20,280);  //skriver det antallet er deklereret som
text("Vindruer",100,280);  // skriver vindruer
  int pris2 = 14;  //initerer prisen
  text(pris2,220,280);  //Skriver det prisen er deklereret som
  
  int fuldpris2 = pris2 * antal2;  //initerer af den fulde pris (deklererer det som produktet af antal og pris)
  text(fuldpris2,290,280);  //skriver det den fulde pris er deklereret som
  text("kr.",320,280);  //Skriver kr
  
  text("--------------",150,310);  //tegner en stiblet linje
  //fuld pris 
  text("Fuld pris", 20,340);  //Skriver fuld pris
  int endligPris = fuldpris1 + fuldpris2;  //initerer den endelige pris
  text(endligPris,290,340);  //skriver det den endelige pris er deklereret som
  text("kr.",320,340);  //Skriver kr
  
  float moms = beregnMomsSelv(endligPris);                // defiere udregningernfor at finde frem til beløb med moms. 
  text(moms,290,390);    //Skriver det momsen er dekleret som
  text("Heraf moms",20,390);  //Skriver moms
  
  float belobMoms = beregnUdenMoms(endligPris);           // defiere udregningernfor at finde frem til beløb uden moms. 
  text(belobMoms,290,410);  //Skriver det moms er deklereret som(initieringen)
  text("Beløb uden moms",20,410);  //skriver beløbet uden moms
  
  int day =day();
  int månede = month();
  int år = year();
  int time = hour();
  int minut = minute();
  //initerer dato og tid

  
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
  // skriver informationer ved hjælp af initieringerne
}

// laver en funktion der regner ud for meget beløbet med moms er. 
float beregnMoms(int belob){
  return belob*1;  //regner beløvet med moms
}

float beregnUdenMoms(int fuldbelob){
  return fuldbelob*0.8;  //regner beløbet uden moms
}

float beregnMomsSelv (int belob){
  return belob*0.25;   //Regnermomsen
}
