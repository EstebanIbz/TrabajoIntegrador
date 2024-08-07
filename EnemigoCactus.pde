// Clase del objeto enemigo, representa el enemigo
class EnemigoCactus extends Enemigo {
  
  private int velocidadX = -90;
  private int velocidadY = 20;

  // -- CONSTRUCTORES --
  public EnemigoCactus(PVector posicion) { //Constructor parametrizado
  super(posicion,25,25,"Cactus1.png");  
  this.transform = new Transform(posicion, new PVector(0.1,0.1));
  }
  
  public void display() { //Metodo para dibujar el enemigo 620
    imagen.draw();
    if (this.transform.posicion.y > 310){
        this.transform.move(velocidadX,-velocidadY);
    }else if(this.transform.posicion.y < 310)
    {
    this.transform.move(velocidadX,velocidadY);
    }
    else if(this.transform.posicion.y == 310){
      velocidadY = 0;
      this.transform.move(velocidadX,velocidadY);
    }
   //this.colision.displayCircle(0); //Muestra el radio de colision
  }
}
