int xstart = 420;
int ystart = 140;

//firkanternes bredde
int b= 30; 

//afstand mellem firkanter
int afstand = 1; 

//mængde firkanter langs x-aksen
int Maengdex = 20; 

//mængde firkanter langs y-aksen
int maengdey = 20; 

//vibrationer firkanterne
int Vibration = 2; // 


void setup() {
  fullScreen();
  background(255,0,0);
 
}

void draw() {
 
  for (int j=0; j<maengdey; ++j) {
    int y = ystart + j*b + j*afstand;
    for (int i=0; i<Maengdex; ++i) {
      int x = xstart + i*b + i*afstand;
      int d = (int)random(-Vibration, Vibration);
      fill(40+(x + y)*20, 0, 250);
      rect(x+d, y+d, b, b);
    }
  }
}
