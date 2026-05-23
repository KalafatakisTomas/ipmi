PImage boton1;
int botonX = 75;
int botonY = 310;
int botonA = 200;
int botonL = 100;
PImage boton2;
int boton2X = 75;
int boton2Y = 310;
int boton2A = 200;
int boton2L = 100;
PImage MenuFondo;
String texto = " La historia comienza desde el fin de una era." + " Aunque el viaje no terminó en ese punto y continua en rumbo hacia el más allá." + " frieren y su grupo junto al héroe himmel, derrotaron al rey demonio devolviendo la tan esperada paz que buscaba el reino.";
PFont fuenteTexto;
boolean mostrarMenuFondo = true;
float alpha = 255;
float alphaFin = 0;
int pantalla = 0;
boolean iniciarEscena = true;
// escena1
PImage escena1;
//escena2
PImage escena2;
//escena3
PImage escena3;
//escena4
PImage escena4;
//escena5
PImage escena5;
//escena6
PImage escena6;
//fin
PImage fin;
//fade de transparencia
boolean fadeOut = false;
int FinFade1 = 0;
boolean cambioDePantalla = false;
boolean reiniciando = false;
void setup(){
  
  size(640, 480);
  fuenteTexto = createFont ("Arial", 22);
  textFont (fuenteTexto);
  MenuFondo = loadImage ("MenuFondo.png");
  boton1 = loadImage ("boton1.png");
  boton2 = loadImage ("boton2.png");
  escena1 = loadImage ("escena1.jpg");
  escena2 = loadImage ("escena2.jpg");
  escena3 = loadImage ("escena3.jpg");
  escena4 = loadImage ("escena4.png");
  escena5 = loadImage ("escena5.png");
  escena6 = loadImage ("escena6.png");
  fin = loadImage ("fin.png");
}
void draw(){
  background(0);
  //fadeOut
  if (fadeOut) {
   alpha -= 5;
  alpha = max(alpha, 0);
  if (alpha <= 0){
    fadeOut = false;
    if (reiniciando){
      reiniciarPresentacion();
      reiniciando = false;
    }
   }
  }
  
  if (!fadeOut && alpha <255 && pantalla != 0){
    alpha += 5;
    alpha = min(alpha, 255);
  }
  //boton inicio, menu + escena1
  if (pantalla == 0){  
  mostrarMenu();
  ejecutarEscena1();
  }
  //escena2
  if (pantalla == 1){
    if (iniciarEscena){
    texto = "  El grupo completo, celebró su victoria juntos y con los habitantes del reino tras acabar con tal calamidad que perturbaba y amenazaba la paz del reino." + "  Marcando algo importante en la historia de tal lugar, volviéndolos unas leyendas que solo resonaban entre cada ciudadano.";  
    reiniciarEscenas();
    iniciarEscena = false;
    }
    ejecutarEscena2();
  }
  //escena3
  if (pantalla == 2){
    if (iniciarEscena){
    texto = "  Durante el pasar de los días recientes, Frieren y el grupo pasaron unos momentos más antes de que cada uno siguiera su propio camino." + "  Por parte de la protagonista, decidió emprender un viaje para descubrir más sobre la magia, iniciando una aventura individual por 50 años." ;  
    reiniciarEscenas();
    iniciarEscena = false;
    }
    ejecutarEscena3();
  }
  //escena4
  if (pantalla == 3){
    if (iniciarEscena){
    texto = "  50 años después, tras su viaje de autodescubrimiento, Frieren regresa a la capital donde se reencuentra con Himmel, el héroe quien peleo junto a ella en el pasado." + "  Siendo este que no la recordaba del todo por la edad, aun así, logro recordarla, volviendo a pasar lindos momentos juntos durante unos días." ;  
    reiniciarEscenas();
    iniciarEscena = false;
    }
    ejecutarEscena4();
  }
  //escena5
  if (pantalla == 4){
    if (iniciarEscena){
    texto = "  Tras la visita, pasaron unos días siendo estos los últimos que vivió el Héroe Himmel... Frieren se lamentaba la muerte de himmel ya que solo pasó 10 años a su lado, Himmel, fue el único que la quería y en más de un sentido.   mientras que ella no lo comprendía bien por sus diferencias, aun así, lamentándose no haberlo podido conocer más...";   ;  
    reiniciarEscenas();
    iniciarEscena = false;
    }
    ejecutarEscena5();
  }
  //escena6
  if (pantalla == 5){
    if (iniciarEscena){
    texto = "Luego del funeral, Frieren decidió volver a emprender viaje al igual que lo hizo por 50 años, aunque no prometía volver a esa ciudad... Frieren planea recorrer todos sus viajes pasados para saber el verdadero sentimiento y significado de lo que alguna vez camino junto a Himmel, quien le importaba más de lo que ella pensaba...";  
    reiniciarEscenas();
    iniciarEscena = false;
    }
    ejecutarEscena6();
  }
  if (pantalla == 6){
    FinYreset();
  }
  
}
void reiniciarEscenas(){
  alphaEscena = 0;
  alphaCuadro = 0;
  alphaTexto = 0;
  escritura = 0;
  textolento = 0;
  EsperaFin = 0;
  detener = false;
  FinEscena = false;
}
