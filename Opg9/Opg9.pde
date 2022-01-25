String s="afbsdflee,gødre,eøsæekeenehzejkls.seekel";
int antal = 0;
int tæl = 0;
int i = 0;
int k = 0;
boolean found = false;

//Opgave 2.1 
for (int j = 0; j<s.length(); j++) {
  if (s.charAt(j) == 'e') {
    antal++;
  }
}
println("e'er med for løkke: "+antal);
println();

//Opgave 2.2
while (!found) {
  if (s.charAt(i)=='e') {
    found=true;
    antal++;
  }
  i++;
  if (i == s.length());
  {
    break;
  }
}
println("e'er med while løkke: "+antal);

// Opgave 2.3
println();
while (i<s.length()){
  if (s.charAt(i) != ',' || s.charAt(i) != '.'){
    tæl ++;
  }
  if (s.charAt(i) == ' '){
    tæl --;
  }
  i++;
}
println("atalet af tegn: "+tæl);
println();

// Opgave 3.
// nej, det vil ikke gøre en forskel hvis man fortere bogstaverne det den stadig vil skulle gå igennem alle bogstaverne

// opgave 4. 
// find alle z'er og udskriv "Jeg har fundet en zebra"
while (!found) {
  if (s.charAt(k)=='z') {
    found = true;
  }
  k++;
}
 println("Jeg har fundet en zebra på position: ", k);
