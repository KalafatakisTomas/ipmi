//fin y reset;
void FinYreset(){
  tint (255, alpha);
  image(fin, 0, 0, 640, 480);
  
  if (mouseX > boton2X && mouseX < boton2X + boton2A && mouseY > boton2Y && mouseY < boton2Y + boton2L){
    
    image(boton2, boton2X -5, boton2Y -5, boton2A +10, boton2L +10);
  }
  else{
    
    image(boton2, boton2X, boton2Y, boton2A, boton2L);
  }
  noTint();
  
}
void reiniciarPresentacion(){
  pantalla = 0;
  alpha = 255;
  fadeOut = false;
  reiniciando = false;
  cambioDePantalla = false;
  iniciarEscena = true;
  mostrarMenuFondo = true;
  texto = " La historia comienza desde el fin de una era." + " Aunque el viaje no terminó en ese punto y continua en rumbo hacia el más allá." + " frieren y su grupo junto al héroe himmel, derrotaron al rey demonio devolviendo la tan esperada paz que buscaba el reino.";
  reiniciarEscenas();
}
