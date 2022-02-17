Ball[] Ball = new Ball[10]; //array fuer 10 bälle
int klick = 0;

void setup(){
  size(400,700); 
  Ball[klick] = new Ball(random(400),random(700), random(1)); //erster Ball mit zufälligen Parametern
}


void mousePressed(){  
  if (klick<9){ //Begrenzung auf 10 Bälle
    klick = klick + 1;  //Klickzaehler
    Ball[klick] = new Ball(mouseX,mouseY, random(1)); } //erzeugt neue Bälle je nach Klickanzahl und Mauspositiion
}

void draw(){
  background(255);
  for (int i = 0; i <= klick; i++){ // für alle bis jetzt erzeugten Bälle mache...
  Ball[i].anzeige();
  Ball[i].spring();}
} 
