/*
rækkefølge på hvordan man skal lave en bingo plade 
start 
find 3 tal 
sorter 
genrer hele pladen 
blokere felter 
lave gitter 
slut 

*/
int [] colonne = new int[3];
int[][] bingoPlade = new int [9][3];

void setup(){
  for(int i = 0; i<9;i++){
  colonne = findTreTal(1, 11);
  printArray(colonne);
  println();
  colonne = sorter(colonne);
  printArray(colonne);
  bingoPlade[i] = colonne;
  }
}

void draw(){
}

int[] findTreTal (int x, int y){
  int[] tal = new int[3];
  for (int i=0; i<3; i++){
    tal[i] = (int)random ( x, y); 
  }
  return tal;
}

// den nedenstående funktion skal sortere tæalrækken fra minst til størst. 
int [] sorter(int[] tal){ 
  int i=0;
  
  while (i<2){
    if (tal[i] > tal[i+1]){
      int temp = tal[i+1];
      tal[i+1] = tal[i];
      tal[i] = temp;
      i=0;
    }else{
      i++;
    }
  }
  return tal; 
}

// laver todimmentionel array 
