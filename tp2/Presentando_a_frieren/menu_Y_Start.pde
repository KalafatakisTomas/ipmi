void mostrarMenu(){
    
  tint(255, alpha);
  
  
 if (mostrarMenuFondo){
   tint(255, alpha);
  image(MenuFondo,0,0,640,480);
   }
   
   
   //interaccion del mouse pasando encima.
  if (mouseX > botonX && mouseX < botonX+botonA && mouseY > botonY && mouseY < botonY+botonL) {
    
image(boton1, botonX -5, botonY -5, botonA +10, botonL +10);
  
  }
  else{
    
 image(boton1, botonX, botonY, botonA, botonL);
    
  }
  
 noTint();
 
}

//interaccion clickeando el mouse
void mouseClicked(){
  //boton1
  if (pantalla == 0){
  if (!fadeOut && mouseX > botonX && mouseX < botonX + botonA && mouseY > botonY && mouseY < botonY + botonL){
        fadeOut = true;
      }
  }
  //boton2
      if (pantalla == 6){
        if (mouseX > boton2X && mouseX < boton2X + boton2A && mouseY > boton2Y && mouseY < boton2Y + boton2L){
          fadeOut = true;
          reiniciando = true;
      }
    }
  }
