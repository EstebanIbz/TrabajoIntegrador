// Clase que representa al tanque que controla el jugador
class Tanque {
  private Transform transform;
  private ImageComponent imagen;
  private Collider colider;
  private boolean perder; //Atributo booleano que verifica si el usuario pierde
  private int puntaje; //Atributo del puntaje del jugador

  // -- CONSTRUCTORES --
  public Tanque(PVector posicion) { //Costructor parametrizado
    this.transform = new Transform(posicion, new PVector(0.5, 0.5));
    this.imagen = new ImageComponent("1.png", transform);
    this.colider = new Collider (transform, 20);
    this.perder = false;
    this.puntaje = 0;
  }

  // -- MÉTODOS --
  public void display() { //Metodo que dicuja el tanque 
    imagen.draw();
    this.colider.transform = this.transform;
    if (keyPressed) {
      if (keyCode == UP) {
        transform.move(0, -5,1);
      } else if (keyCode == DOWN) {
        transform.move(0, 10,1);
      }
    }
 
  }

  public void disparar() { //Metodo para disparar, añadiendo balasal gestor balas creado en el escenario
    escenario.gestorBalas.addBullet(new Bala(transform.posicion.copy()));
  }
  public void sumarPunto() { //Metodo para sumar el puntaje del jugador para ganar
    this.puntaje++;
  }
  
  
}
