//escena3
void ejecutarEscena3(){
if (alpha <=0 && !cambioDePantalla) {
        
        cambioDePantalla = true;
        
        FinFade1 = millis();
      }
      if (cambioDePantalla && millis () - FinFade1 >= 1400) {
        
        tint(255, alphaEscena);
        image(escena3, 0 , 0, 640, 480);
        noTint();
        //cuadro de texto escena 3
        noStroke();
              fill (0, alphaCuadro);
      rect(30, 270, 570, 180, 30);
      
        if (!FinEscena && alphaEscena <255){
          alphaEscena +=5;
          alphaEscena =min(alphaEscena, 255);
        }
          if(!FinEscena && alphaEscena >= 255 && alphaCuadro < 180){
      alphaCuadro += 5;
      }
        if (!FinEscena && alphaCuadro >=180 && alphaTexto < 255){
          alphaTexto +=5;
        }
        if (detener && millis() - textolento >= 500){
           detener = false;
         }
        }
        //texto para el cuadro de escena 3
        if (!detener && alphaTexto >= 255 && frameCount % 2 == 0 && escritura < texto.length()){
          escritura ++;
          char letra =
         texto.charAt(escritura - 1);
         if (letra == '.' || letra == ','){
           detener = true;
           textolento = millis();
         }
         
         
        }
        String textoActual = texto.substring(0, escritura);
        fill(255, alphaTexto);
        textSize (22);
        textAlign(LEFT, TOP);
        textLeading(28);
        text(textoActual, 50, 280, 550, 160);
        
        //fin de escena3 y fade out.
        
        if (escritura >= texto.length() && !FinEscena){
        FinEscena = true;
        EsperaFin = millis();
        }
        if (FinEscena && millis() - EsperaFin >=2500){
          alphaTexto -= 5;
          alphaTexto = max(alphaTexto, 0);
          if (alphaTexto <= 0){
            alphaCuadro -= 5;
            alphaCuadro = max(alphaCuadro, 0);
             }
            if (alphaCuadro <= 0){
              alphaEscena -= 5;
              alphaEscena = max(alphaEscena, 0);
              }
            }
              if (alphaEscena <= 0 && FinEscena){
              pantalla = 3;
              iniciarEscena = true;
          }
}
