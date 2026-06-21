void CuadradoColores(float x, float y, float angulo, int r, int g, int b){
   
  
      rectMode(CENTER);
  noStroke();

    for(int i = 0; i < 10; i++) {
  int tamaño = 200 - i*20;

  fill(r + i*15, g + i*15, b + i*15);
  pushMatrix();
  translate(x,y);
  rotate(radians(i * angulo));
  rect(0,0,tamaño,tamaño);
  popMatrix();
}

}
