int step = 0;
<<<<<<< HEAD
PImage img;
=======
Cell c;
<<<<<<< HEAD
>>>>>>> ec71098... Try
=======
boolean isFirst = true; //just to draw Board once
int numDots = 0;
protected Dot[] dots;
Square[][] b = new Square[28][31];

>>>>>>> e973eac... A little update

void setup() {
  size(448,496);
  background(0);
  img = loadImage("WBC.jpg");
<<<<<<< HEAD
=======
  BVirus = loadImage("BlueVirus.jpg");
  GVirus = loadImage("GreenVirus.jpg");
  PVirus = loadImage("PinkVirus.jpg");
  RVirus = loadImage("RedVirus.jpg");
  c = new Cell(b[13][11], b, dots);
>>>>>>> 67fc57a... push
}

<<<<<<< HEAD
void draw() {
  rectMode(CORNER);
  if (step == 0) {
    Textbox t = new Textbox(0);
    t.display();
    imageMode(CENTER);
    image(img,224,248);
  } else if (step == 1) {
    background(0);
    imageMode(CORNER);
    Textbox t = new Textbox(1);
    t.display();
  } else if (step == 2) {
<<<<<<< HEAD
    board();
  }
  
=======
    if (isFirst) {
      board();
      isFirst = false;
    }
    c.draw();
  } else if (step == 3) {
    background(0);
    Textbox t = new Textbox(2);
    t.display();
  } else if (step == 4) {
    background(0);
    imageMode(CENTER);
    image(BVirus,224,248,BVirus.height/2,BVirus.width/2);
  } else if (step == 5) {
    background(0);
    Textbox t = new Textbox(3);
    t.display();
  } else if (step == 6) {
    background(0);
    image(GVirus,224,248,GVirus.height/2,GVirus.width/2);
  } else if (step == 7) {
    background(0);
    Textbox t = new Textbox(4);
    t.display();
  } else if (step == 8) {
    background(0);
    image(PVirus,224,248,PVirus.height/2,PVirus.width/2);
  } else if (step == 9) {
    background(0);
    Textbox t = new Textbox(5);
    t.display();
  } else if (step == 10) {
    background(0);
    image(RVirus,224,248,RVirus.height/2,RVirus.width/2);
  } else {
    background(0);
    Textbox t = new Textbox(6);
    t.display();
  }   
>>>>>>> e973eac... A little update
}

void mouseClicked() {
  if (step != 2) {
    step += 1;
  }
}

=======
>>>>>>> ec71098... Try
void board() {
  size(448,496);
  background(0);
  
<<<<<<< HEAD
>>>>>>> 9d0c6d6... Big Problems
=======
>>>>>>> d59ce28... Fixed
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
         numDots++;
       }
       else{
         b[x][y] = new Square(x*16.0,y*16.0,16.0,false);
       }
     }
  }
  int n = 0;
  dots = new Dot[numDots-1];
  for(Square[] sA : b){
    for(Square s : sA){
      fill(s.getColor());
      stroke(#FFFFFF);
      rect(s.getX(),s.getY(),s.getSize(),s.getSize());
      if (!(s.getWall())) {
        dots[n] = new Dot(s);
        n++;
      }
    }
  }
  
  
}

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 9d0c6d6... Big Problems
=======
>>>>>>> d59ce28... Fixed
=======
void draw() {
  rectMode(CORNER);
  if (step == 0) {
    Textbox t = new Textbox(0);
    t.display();
  } else if (step == 1) {
    background(0);
    Textbox t = new Textbox(1);
    t.display();
  } else if (step == 2) {
    board();
    c.draw();
  } 
}

void mouseClicked() {
  if (step != 2) {
    step += 1;
  }
}



>>>>>>> ec71098... Try
