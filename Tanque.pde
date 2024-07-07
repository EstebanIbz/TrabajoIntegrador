// Clase que representa al tanque que controla el jugador
class Tanque {
  private Transform transform;
  private ImageComponent imagen;
  private GestorBalas gestorB;

  // -- CONSTRUCTORES --
    public Tanque(PVector posicion) {
    this.transform = new Transform(posicion, new PVector(0.5, 0.5));
    this.imagen = new ImageComponent("1.png", transform);
    this.gestorB = new GestorBalas();
  }

  // -- MÉTODOS --
   public void display() {
      imagen.draw();
       if (keyPressed) {
       if (keyCode == UP) {
      transform.move(0, -15);
    } else if (keyCode == DOWN) {
      transform.move(0, 15);
    } 

  }
  gestorB.updateBalas();
   }
   
   public void disparar(){
   gestorB.addBullet(new Bala(transform.posicion.copy()));
   }
  public void sumarPunto() {
  }
}
