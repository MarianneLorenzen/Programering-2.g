// a. Beskriverhvad hver linje skal gøre 

// b. Lav en funktion der kan bergnen beløb uden moms 

// c. Lav funktion der udskriver bon, som siger tak for dit køb, jens, totalt beløb, beløb uden moms , beløb med moms, moms udgøre 

// d. Slå Day() op og skriv Dato: 16/9 2020 kl 13:00

// Deklerete hvad de forskellige intergers skal have. Så belobUdenMoms og belobMedMoms har en værdi 
int belobUdenMoms = 100;
int momsBelob =125;
float belobMedMoms = 0;
float belobMoms = 0;
String navn = "Mairanne B. Lorenzen";
String name = "Beløb med moms:";
String navne = "Beløb uden moms:";
String momsen = "Momsbeløbet udgøre:";
String total = "Det totale beløb:";
String dato = "Dato:";
String kl = "kl.";

//void betyder at der ikke ksla komme noget ud af funktionen og når man siger setup betyder det at 
// man sætter programrings fladen op det kunne vær ved at sige Size() elle andet der definere skærmstørelsen 
void setup(){
  noLoop();          // Viser at der ikke skal være nogle loops 
}

// void betyderogså fejl eller forkert
// draw skal man have med efter set op for at kunne tegne i progammet 
void draw(){

  println();
  print(dato, day());
  print("/");
  print(month(), year(), kl, hour());
  print(":");
  println(minute());                                         // Fra linje 31-36 definere hvad der skal stå på skærmen med dato og klokken 
  println (navn);                                            // Fortæller at der skal stå det deffinerede navn 
  println();                                                 // lave en ny linje 
  
  println (total,momsBelob);
  println();
  

  float belobMoms = beregnUdenMoms(momsBelob);               // defiere udregningernfor at finde frem til beløb med moms. 
  println(navne,belobMoms);                                  // Skriver teksten der beskriver tallet og der efter det fulde beløb som er deffineret i starten 


  float belobMedMoms = beregnMoms(belobUdenMoms);            // defiere udregningernfor at finde frem til beløb med moms. 
  println (name, belobMedMoms);                              // Skriver teksten der beskriver tallet og der efter tallet der er kommet udd af udregningerne 
  
  float moms = beregnMomsSelv(belobUdenMoms);                // defiere udregningernfor at finde frem til beløb med moms. 
  print(momsen, moms);                                       // Skriver teksten der beskriver tallet og der efter tallet der er kommet udd af udregningerne 
}

// laver en funktion der regner ud for meget beløbet med moms er. 
float beregnMoms(int belob){
  return belob*1.25;
}

float beregnUdenMoms(int fuldbelob){
  return fuldbelob*0.8;
}

float beregnMomsSelv (int belob){
  return belob*0.25;
}
