int step = 0;


void setup() {
  size(448,496);
  background(0);
}

void draw() {
  if (step == 0) {
    Textbox t = new Textbox(0);
    t.display();
  } else if (step == 1) {
    background(0);
    Textbox t = new Textbox(1);
    t.display();
  } else if (step == 2) {
    board();
  }
  
}

void mouseClicked() {
  if (step != 2) {
    step += 1;
  }
}

void board() {
  size(448,496);
 Square[][] b = new Square[28][31];
  for(int x = 0; x < 28; x++){
     for(int y = 0; y < 31; y++){
       if(y == 0 || 
      ((y == 1  || y == 20)&& (x == 0 || x == 13 || x == 14 || x == 27)) ||
      ((y == 2 || y == 3 || y == 4 || y == 21 || y == 22) && !(x == 1 || x == 6 || x == 12 || x == 15 || x == 21 || x == 26)) ||
      ((y == 6 || y == 7) &&  !(x == 1 || x == 6 || x == 9 || x == 18 || x == 21 || x == 26)) ||
      ((y == 5 || y == 29) && (x == 0 || x == 27)) ||
      ((y == 12 || y == 13 || y == 15 || y == 16 || y == 18 || y == 19) && !(x == 6 || x == 9 || x == 18 || x == 21)) ||
      ((y == 8 || y == 26) && (x == 0 || x == 7 || x == 8 || x == 13 || x == 14 || x == 19 || x == 20 || x == 27)) ||
      ((y == 9 || y == 10) && !(x == 6 || x == 12 || x == 15 || x == 21)) ||
      ((y == 11 || y == 17) && (x < 6 || x > 21 || x == 7 || x == 8 || x == 19 || x == 20)) ||
      (y == 14 && x > 9 && x < 18) || 
      (y == 23 && (x == 0 || x == 4 || x == 5 || x == 22 || x == 23 || x == 27)) ||
      ((y == 24 || y == 25) && !(x == 3 || x == 6 || x == 9 || x == 18 || x == 21 || x == 24)) ||
      ((y == 27 || y == 28) && !(x == 1 || x == 12 || x == 15 || x == 26)) ||
       y == 30){
         b[x][y] = new Square(x*16.0,y*16.0,16.0,true);
       }
       else{
         b[x][y] = new Square(x*16.0,y*16.0,16.0,false);
       }
     }
  }
  for(Square[] sA : b){
    for(Square s : sA){
      fill(s.getColor());
      stroke(#FFFFFF);
      rect(s.getX(),s.getY(),s.getSize(),s.getSize());
    }
  }
  Cell c = new Cell(b[13][11], b);
  c.draw();
} 
