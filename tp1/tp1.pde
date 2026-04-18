PImage miImagen;

void setup(){
  size(800,400);
  miImagen = loadImage("renacimiento.jpg");

}

void draw(){
  background(#1C7CB9);
  image(miImagen, 0, 0, 400, 400);
  noStroke();
fill(#D86F32);
arc(700, 200, 230, 400, PI, TWO_PI);
fill(#EDA781);
arc(660, 400, 250, 180, PI, TWO_PI);
fill(#D86F32);
triangle(700, 200, 700, 400, 800, 400);
fill(#D86F32);
triangle(700, 200, 800, 300, 800, 200);
fill(#AFC7D1);
rect(705, 300, 50,10);
fill(#AFC7D1);
rect(730, 350, 50,10);
fill(#AFC7D1);
rect(740, 380, 50,10);
fill(#D86F32);
ellipse(585, 350, 100,135);
fill(#7E3504);
arc(585, 350, 80, 100, HALF_PI, PI + HALF_PI);
fill(#642901);
arc(585, 330, 80, 80, -HALF_PI, HALF_PI);
fill(#5A2508);
triangle(585, 200, 620, 400, 700, 200);
fill(#506167);
rect(600, 270, 50,15);
fill(#5A2508);
ellipse(630, 267, 69,20);
fill(#F5C3A6);
rect(650, 200, 90, 200);
fill(#EDA781);
ellipse(695, 280, 90, 120);
fill(#F5C3A6);
ellipse (700, 160, 150, 300);
fill(#D86F32);
ellipse (770, 135, 50, 150);

fill(#DE9469);
quad(700, 190, 680, 150, 680, 200 , 700, 200);
fill(0, 0, 0);
ellipse(695, 195, 10,11);
fill(#F5C3A6);
ellipse(696, 196, 10,10);

fill(0, 0, 0);
ellipse(685, 196, 10,11);
fill(#F5C3A6);
ellipse(685, 197, 9,9);


//cejas:
fill(#674229);
ellipse(720, 105, 40, 20);
ellipse(650, 110, 40, 20);

fill(#F5C3A6);
ellipse(720, 110, 40, 20);
ellipse(650, 115, 40, 20);

//ojos de la cara:
fill(0, 0, 0);
ellipse(720, 130, 36, 22);
fill(200,200,200);
ellipse(720, 130, 40, 20);
fill(#675038);
ellipse(720, 130, 20, 20);
fill(0, 0, 0);
ellipse(720, 130, 10, 10);
fill(0, 0, 0);
ellipse(650, 140, 36, 22);
fill(200,200,200);
ellipse(650, 140, 40, 20);
fill(#675038);
ellipse(650, 140, 20, 20);
fill(0, 0, 0);
ellipse(650, 140, 10, 10);
//labios
fill(#B25C66);
ellipse(700, 250, 50, 30);
fill(0, 0, 0);
rect(675, 250, 50, 2);
}
