

//link del video//
// https://youtu.be/nJ1n16-ry4U

PImage miIlusion;
boolean CuadradoVerdeRotado = false;
float anguloVerde = 0;
boolean CuadradoRojoRotado = false;
float anguloRojo = 0;
boolean CuadradoNaranjaRotado = false;
float anguloNaranja = 0;
boolean CuadradoVioletaRotado = false;
float anguloVioleta = 0;
String nombreBloque = "";
boolean reiniciando = false;


void setup(){
  size (800,400);
  
  miIlusion = loadImage ("13.jpg");
  
  
}
  void draw(){
    background(0);
    image (miIlusion, 0, 0, 400, 400);

    
    if(CuadradoVerdeRotado){

  if(anguloVerde < 5){
    anguloVerde += 0.20;
      }

   }
  
  if(CuadradoRojoRotado){

  if(anguloRojo < 5){
    anguloRojo += 0.20;
    }

}


if(CuadradoNaranjaRotado){

  if(anguloNaranja < 5){
    anguloNaranja += 0.20;
  }

}

if(CuadradoVioletaRotado){

  if(anguloVioleta < 5){
    anguloVioleta += 0.20;
  }

}

if (reiniciando){
  if(anguloVerde > 0){
    anguloVerde -= 0.20;
    }
    if(anguloRojo > 0){
    anguloRojo -= 0.20;
  }
if(anguloNaranja > 0){
    anguloNaranja -= 0.20;
  }
  if(anguloVioleta > 0){
    anguloVioleta -= 0.20;
  }
}
  
   nombreBloque = "";
    
     if(distanciaMouse(500,100) < 100){

      nombreBloque = "Bloque Verde";

        }
      else if(distanciaMouse(700,100) < 100){

      nombreBloque = "Bloque Rojo";

      }
      else if(distanciaMouse(500,300) < 100){

  nombreBloque = "Bloque Naranja";

        }
else if(distanciaMouse(700,300) < 100){

  nombreBloque = "Bloque Violeta";

      }
      int bloque = 0;
      for(int fila = 0; fila < 2; fila++){
    
      for(int columna = 0; columna < 2; columna++){
    
        float x = 500 + columna * 200;
        float y = 100 + fila * 200;
    if (bloque == 0){
      
      CuadradoColores(x, y, anguloVerde, 0, 120, 80);
      
    }
  else if(bloque == 1){

      CuadradoColores(x, y, anguloRojo, 120, 20, 40);

}
  else if(bloque == 2){

      CuadradoColores( x, y, anguloNaranja, 150, 80, 0);

}
  else if(bloque == 3){

      CuadradoColores(x, y, anguloVioleta, 100, 70, 180);

}
bloque++;
  }

}
    
    fill(255);
    textSize(20);
    text(nombreBloque, 600, 30);
    
    fill(255);
textSize(14);
text("Presiona ESPACIO para reiniciar", 500, 390);


} //final del void draw

    float distanciaMouse(float x, float y){
  
    return dist(mouseX, mouseY, x, y);
  
} //funcion con retorno y funcion matematica

void reiniciarPrograma(){

  CuadradoVerdeRotado = false;
  CuadradoRojoRotado = false;
  CuadradoNaranjaRotado = false;
  CuadradoVioletaRotado = false;

}
