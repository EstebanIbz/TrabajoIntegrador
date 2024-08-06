class EnemigoPiedra extends Enemigo {


  // -- CONSTRUCTORES --
  public EnemigoPiedra(PVector posicion) { //Constructor parametrizado
    super(posicion, 50, 30, "roca.png");  // cambiar parametros
    this.transform = new Transform(posicion, new PVector(0.2, 0.2));
  }
  public void display() { //Metodo para dibujar el enemigo piedra
    imagen.draw();
    this.transform.move(-2, 0, 1);
    this.colision.displayCircle(0); //Muestra el radio de colision
  }
}
