class Ball {
  float xkoord;
  float ykoord;
  float gravkonst = 0.9;
  float hilf = 0;
  float farbe;
  float richtung;
 
  
  Ball(float tempxkoord, float tempykoord, float temprichtung) { //übernimmt Parameter in diese Klasse
    xkoord = tempxkoord;
    ykoord = tempykoord;
    richtung = temprichtung;
  }
  
  void spring(){  
    hilf = hilf + gravkonst; //erzeugt Auf-und Abbewegung des Balls in Abhängigkeit von 2 Konstanten
    ykoord = ykoord + hilf; 
    if (richtung>=0.5){xkoord = xkoord + 0.5;} //erzeugt einen Rechts bzw. Linksdrall damit der Ball aus dem Bild herausbewegt wird! *Zusatz
    else if (richtung<0.5) {xkoord = xkoord - 0.5;}
    if(ykoord > height-15) {   //Abbruchbedingung wenn Boden berührt
    hilf = hilf * - gravkonst;  
    ykoord=height-15;}
  }
  
  void anzeige(){  //zeigt die Bälle an
    fill(0);
    noStroke();
    ellipse(xkoord,ykoord,30,30);
  }  
}
