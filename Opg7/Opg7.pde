/*
Jeg mangler at lavve opgave 2, 3 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!





I denne opgave skal du arbejde med løkker. For og While løkker

Vi har nu talt om de forskellige datatyper, vi har talt om floating point og vi ved hvad overflow er.

Hvis vi har en variabel, som vi vil bruge som en tæller, af type integer, har vi talt om to måder at bruge variablen på.

metode 1
int i;
i= i +1; // tæller i én op

metode 2
int i;
i++; // tæller i én op

Begge metoder lægger værdien 1 til variablen i. Men hvorfor er det vigtigt at vide, hvordan man lægger 1 til en værdi? Det er det fordi vi bruger en tæller når vi løber igennem en løkke. Den tæller hvor mange gange vi har udført instrutionen. Det kan være smart at bruge i forbindelse med streng operationer. 

Løkker
Der findes to former for løkker. While og For. 

while (condition) {
  // code block to be executed
 }

for (statement 1; statement 2; statement 3) {
  // code block to be executed
 }

While-løkke
Oversat, betyder while, sålænge - så længe betingelsen ikke er sand, så skal løkken udføres. Se på dette eksempel:

boolean found = false; // en variable til at teste på
int i=0;
println("så løber vi igennem while-løkken");
while (!found){
  println(i);

  if (i==9) // test om betingelsen er opfyldt
    found=true; //vi har fundet den rigtige værdi og gør nu found true.
  i++; // tæl i en op
} 

Hvis vi ikke sætter found til at være true, så vil løkken køre for evigt. Vi skal altså kunne forudse et tidspunkt, hvor vi kan sætte found til at være sand, for at det er en fordel at bruge en while struktur. Jeg ved, hvis jeg starter med 0 og lægger 1 til, så vil jeg på et tidspunt ramme 9.

Alternativet er en for-løkke
For løkker bruger vi når vi ved, hvor mange gange vi skal genneløbe løkken maksimalt. 

println("så løber vi igennem for-løkken");
for (int i =0; i<10; i++){
  println(i);
}


Opgave:

Vi har talt om, at string har et index. Hvis vi har en løkke kan vi gennemløbe en string og se på det enkelte bogstav på i-plads.

Slå op i dokumentationen for processing og læs om string(). Nederst er der en række metoder som kan benyttes sammen med en string. Nå datatype starter med stort bogstav, vil der altid være metoder i kan bruge. Man bruger metoderne sammen med variabel navnet. F.eks. hvis str er defineret som datatype String, så kan man skrive: str.charAt(i);
*/

// 1) Lav henholdsvis en for-løkke og en while-løkken som udskriver de første 5. karakterer i sætningen "Hej med dig!". Tip, brug   
//charAt() sammen med din tæller i.

String s="hej med dig";
boolean found=false;
int i=0;
//while løkke 
while (!found) {
  if (s.charAt(i)=='m') {
    found=true;
  }
  println(s.charAt(i));
  i++;  //eller man kan skrive i=i+1
  
}
println();

//for løkke 
for(int j=0;j<5;j++){
  if (s.charAt(j)=='h'){
    found=true;
  }
  println(s.charAt(j));
}
println();
println("opg 2.");

//2) Lav henholdsvis en for-løkke og en while-løkken som skal gennem løbes 30 gange. Start med i=0; og tæl i op hver gang du løber gennem løkken. Den skal kun udskrive i, når i er mellem værdien 10 til og med 20.
//while løkke 
//for løkke 
for(int j=0;j<30;j++){
  if (j>10&&j<20){
    println(j);
  }
}

println();
println("Opgave 3");

//3) Lav henholdsvis en for-løkke og en while-løkken som skal finde alle e'er i sætningen: 
//"Dette er en sætning som indeholder mange e'er. Men hvor mange er der?"
//Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet.
String e = "Dette er en sætning med mange e'er";
int antal = 0;

for (int k = 0; k < e.length(); k++){
  if (e.charAt(k) =='e'){
    antal++;
  }
}
println("e'er i sætningen: "+antal);
 
println();
println("Opgave 4");

//4) Lav et program som udskriver bogstaverne fra position: 39,19,41,6,4,16,6,16,35,99,41,48,99,95 til skærmen. Brug sætningen "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)"
String l="Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";
String p1 = l.substring(38,39);
String p2 = l.substring(18,19);
String p3 = l.substring(40,41);
String p4 = l.substring(5,6);
String p5 = l.substring(3,4);
String p6 = l.substring(15,16);
String p7 = l.substring(5,6);
String p8 = l.substring(15,16);
String p9 = l.substring(34,35);
String p10 = l.substring(98,99);
String p11 = l.substring(40,41);
String p12 = l.substring(47,48);
String p13 = l.substring(98,99);
String p14 = l.substring(94,95);

println(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14);

println();
println("Opgave 5");

//5) Lav et program som kan udskrive længden af overstående sætning.
int læng = l.length();
println(læng);

println();
println("Opgave 6");

//6) Lav et program som klipper i vores streng. Den skal tage fra position 83 og til slut. Udskriv den nye streng.
String sub1 = l.substring(82);
println(sub1);

println();
println("Opgave 7");

//7) Lav et program som klipper i vores streng. Den skal tage fra position 83 og til 85. Udskriv den nye streng.
String sub2 = l.substring(82,85);
println(sub2);

println();
println("Opgave 8");

//8) Lav hele sætningen om til store bogstaver og udskrive den. 
l = l.toUpperCase();
println(l);

println();
println("Opgave 9");

//9) Lav hele sætningen om til små bogstaver og udskrive den.
l = l.toLowerCase();
println(l);

println();
println("Opgave 10");

//10) læs og forstå følgende program
String str2 =  "Nej";
if (str2.equals("ja"))
  println ("Det gør den!");
 else
  println ("Det gør den ikke!");
 
//a) hvad udskriver programmet?
// prgrammet udskriver en lykker der siger at hhvis strengen som hedder nej der er det same som ja skal den udskrive "Det gør den!" eller skal programmet udskrive "det gør den ikke!"

//b) hvordan kan du få programmet til at udskrive det modsatte af, hvad den gør nu?
// Hvis man skal have programmet til at udskrive det modsatte skal man sætte en notgate ind det vil sige man sætter et "!" som man kan se nedenfor. 
String str1 =  "Nej";
if (!str1.equals("ja"))
  println ("Det gør den!");
 else
  println ("Det gør den ikke!");
