// Clase qure representa al PowerUp individual en el juego
class PowerUp {
  private int puntaje;
  private Collider colision;
  private Transform transform;
  private ImageComponent imagen;

  // -- CONSTRUCTORES --
  public PowerUp(PVector posicion) { //Constructor por defecto
  this.puntaje = 15;
  this.transform = new Transform(posicion, new PVector (0.5, 0.5));
  this.colision = new Collider(transform, 20);
  //this.imagen = new ImageComponent("Caja.png", transform);
  }

  // -- MÉTODOS --
  public void display() {
  }
}
