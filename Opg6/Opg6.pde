/*

Computere arbejder med 0,1 og alt basserer sig på det binæretalsystem. Det betyder at alt funktionalitet baserer sig på booskalgebra, AND, OR og NOT. De nøgleord bruger vi også når vi programmerer. 

I har lavet en liste med ord og udtryk:

Instruktion
    En række at koder giver en instruktion 
Sekvens
     Sekvens en er række and instruktioner 
Funktion
     En funktion et lige som i matematik hvor man fx har f(x)=2x+3, man har en regnestykker som giver en værdi for f(x)
Kontrolstruktur
    Bruges til at styre porgrammet
Betingelser
    En bitingelse er en ting eller et kriterie der skal være opfyld for at man kom gå videre. det er IF/else, så hvis betingelsen er opfyldt så sker det noget og hvis ikke sker der noget andet. kaldes ogsåen boolean 
Forgrening
     en forgrening er en gren eller sidevej der løber parralet med hovedgrenen(hovedprogameringsprogrammet. 
Løkke
    En løkke er en gentagelse af en instruktion eller sekvens. 
Variabel (https://data-flair.training/blogs/java-data-types/)


  ikke primitive
    a. String
en linge af flere karakter (char) 
    b. Array
[], en række af værdier 
    c. klasser
En genrel beskrivelse af virkeligheden. 
    d. Interfaces  
en eksra klasse der giver ad gang til en anden klasse. 

  Primitive
    a. Int
Det er et heltal - den bestmer hvor mange gange man skal gøre noget 
    b. Float
 Det er et kommatal 
    c. Char
 det er en karakter
    d. Boolean
Sandt eller falsk 
    e. Byte
en Byte består af 8 bit i java. Det kan have værdierne fra -128 til 127, den den signifikante bit bestmere om det er et positivt eller negativt tal. 
    f. Short
To bytes 
    g. long
Det er en folængelse af et heltal helt lige som integer 
    h. Double.
En dublering af komatal (float) 

Initiering
    En tildeiling af en værdi 
Deklaration
    Det er en bestemmelse af indholet, det kunne være en vare dekleration der bestemmer hvad der er i varen 
Parameter
    Man bestemmer variabler til funktioner som fx int måned = month()
    
Cammelback notation
    Cammelback notation er år når man skriver en dekleration af en funktion med flere og of så i stedet for at have mellemrum harbruger man store bogstaver fx. prisUdenMoms

Denne opgave handler om at forstå de forskellige datatyper. 
Til dette skal du opstille en tese (et vildt, men kompetent gæt) for min og max værdi af hver primitiv data type.
    Tese til int 
max = 2^31 - min = -2^31
    Tese til float 
max = 2^28 - min = -2^28
    Tese til char 
max = 128 - min = 0
    Tese til Boolean
max = 2^61 - min = -2^61
    Tese til Byte
max = 255 - min = 0
eller 
max = 127 - min = -128 
    Tese til Short
max = 310 - min = -310
    Tese til long
max = 2^31*2 - min = -2^31*2
    Tese til Double
max = 2^28*2 - min = -2^31*2


//Skriv et program, som kan beregne den maksimale værdi for en datatype. Vi kalder dette den induktive metode (specialtilfælde), fordi vi leder efter en special værdi (sort svane). Find evt. inspiration i programmet testDatatyper, som du finder på github. Noter alle dine resultater.

//Brug nu den deduktive metode (logiske), og beregn den maksimale værdi for hver primitiv datatype ud fra hvor meget plads der allokeres i compueterens hukommelse til datatypen. F.eks allokeres der (sjovt nok) en byte til datatypen byte. Du kan her finde svaret https://data-flair.training/blogs/java-data-types/

//Noter alle dine resultater og slut af med at sammenholde din tese med resultatet af din induktive og deduktive metode og hvad der står i artiklen: https://data-flair.training/blogs/java-data-types/


//Ekstra opgave:
//De to datatyper float og double er ikke lige nøjagtige. Det kan de se hved følgende opgave: Hvad giver kvadratroden af 2 gange med kvadratroden af 2? Lav et først et program med sqrt() som returnerer en float og herefter med Math.squrt() som returnerer en double. Forklar forskellen på de to funktioner og redegør for resultatet af de to instruktioner. 
