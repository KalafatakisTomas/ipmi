void mousePressed(){
  if(distanciaMouse(500,100) < 100){
      reiniciando = false;
   CuadradoVerdeRotado = true;

        }
  
  if(distanciaMouse(700,100) < 100){
      reiniciando = false;
   CuadradoRojoRotado = true;
      }
  
  if(distanciaMouse(500, 300) < 100){
      reiniciando = false;
   CuadradoNaranjaRotado = true;
    }
  
  if(distanciaMouse(700, 300) < 100){
      reiniciando = false;
   CuadradoVioletaRotado = true;
  }
  
}

void keyPressed(){
  if(key ==' '){
    reiniciarPrograma();
    reiniciando = true;
  }
}
