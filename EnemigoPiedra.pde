class EnemigoPiedra extends Enemigo {

  private int velocidadX= -70;
  // -- CONSTRUCTORES --
  public EnemigoPiedra(PVector posicion) { //Constructor parametrizado
    super(posicion, 50, 50, "roca.png");  // cambiar parametros
    this.transform = new Transform(posicion, new PVector(0.2, 0.2));
  }
  public void display() { //Metodo para dibujar el enemigo piedra
    imagen.draw();
    this.transform.move(velocidadX, 0);
    //this.colision.displayCircle(0); //Muestra el radio de colision
  }
}
