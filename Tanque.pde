// Clase que representa al tanque que controla el jugador
class Tanque {
  private Transform transform;
  private ImageComponent imagen;

  // -- CONSTRUCTORES --
  public Tanque(PVector posicion) { //Constructor parametrizado
    this.transform = new Transform(posicion, new PVector(0.5, 0.5));
    this.imagen = new ImageComponent(spriteTanque, transform);
  }


  // -- MÉTODOS --
  public void display() {
  }

  public void sumarPunto() {
  }
}
