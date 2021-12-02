import java.util.Arrays; //<>// //<>//

// Array til at lave kolonne
int[] kolonne = new int[3];

// 2D Array som svarer til vores bingo plade. 9 kolonner og 3 rækker
int[][] bingoPlade = new int[9][3];


void setup() {
  size(600, 250);
  textSize(20);
  fill(0);

  //funktionen findTreTal returnerer en kolonne med tre tal. En bingoPlade består af 9 kolonner - get it? :)

  // ****Lav en lykke som kan gentages 9 gange. Her starter din løkke
  for (int i=0; i<bingoPlade.length; i++) {
    // start med at finde tre tal
    kolonne = findTreTal(i);
    while (findEns(kolonne)) {                            //credit to Chistian Brun
      kolonne = findTreTal(i);
    }

    // sorter kolonne stigende
    kolonne = sorter(kolonne);

    // **** put kolonne i bingPlade[i] det gør du her
    bingoPlade[i] = kolonne;

    // her slutter din løkke
  }

  int[] nuller = new int [4];
  for (int i=0; i<3; i++) {
    nuller = findFireTal();
    while (findEns(nuller)) {
      nuller = findFireTal();
      nuller = sorter(nuller);
    }
    for (int j=0; j<nuller.length; j++) {
      bingoPlade[nuller[j]][i]=0;
    }
  }

  // her printer jeg bingopladen til consol
  for (int i=0; i<bingoPlade.length; i++) {               //credit to Chistian Brun
    println("-------");
    printArray(bingoPlade[i]);
  }
  println();
}

void draw() {
  background(255, 255, 255);
  udskriv();
}

int[] findTreTal(int faktor) {
  int[] tal = new int[3];
  for (int i=0; i < 3; i++) {                            //credit to Chistian Brun
    // vi ganger faktor med 10 for at få 10'er 20'er etc
    tal[i]  = (int)random(1, 11)+faktor*10 ;
  }
  return tal;
}

int[] findFireTal() {
  int[] tal = new int[4];
  for (int i=0; i < tal.length; i++) {                            //credit to Chistian Brun
    // vi ganger faktor med 10 for at få 10'er 20'er etc
    tal[i]  = (int)random(0, 9);
  }
  return tal;
}


int[] sorter(int[] tal) {
  int i=0;
  //for (int i =0; i <tal.length-1; i++) {
  while (i<tal.length-1) {
    if (tal[i]>tal[i+1]) {
      int temp = tal[i];                                  //credit to Chistian Brun
      tal[i]=tal[i+1];
      tal[i+1]=temp;
      i=0;
    } else {
      i++;
    }
  }
  return tal;
}

boolean findEns(int[] tal) {
  boolean notAlike = false;
  // find og ret dubletter
  for (int i =0; i<tal.length; i++) {
    for (int j=i+1; j<tal.length; j++) {                  //credit to Chistian Brun
      if (tal[i] == tal[j]) {
        notAlike = true;
      }
    }
  }
  return notAlike;
}


void udskriv() {

  // udskriv bingoPlade
  // ****gentag så jænge i er mindre end ni
  // ****gentag så jænge j er mindre end 3
  // ****text(string,x-værdi+10*i,y-værdi+10*j);
  for (int i =0; i<bingoPlade.length; i++) {
    for (int j =0; j<bingoPlade[i].length; j++) {
      text(bingoPlade[i][j], 100+i*40, 100+j*40);
    }
  }
}
