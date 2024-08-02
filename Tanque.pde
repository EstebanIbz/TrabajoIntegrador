// Clase que representa al tanque que controla el jugador
class Tanque {
  private Transform transform;
  private ImageComponent imagen;
  private Collider colider;
  private boolean perder; //Atributo booleano que verifica si el usuario pierde
  private int puntaje; //Atributo del puntaje del jugador
  private SpriteComponent sprite;
  private int animacionEstado;

  // -- CONSTRUCTORES --
  public Tanque(PVector posicion) { //Costructor parametrizado
    this.transform = new Transform(posicion, new PVector(1.5, 1.5));
    this.imagen = new ImageComponent("Tanquesito.png", transform);
    this.colider = new Collider (transform, 40);
    this.perder = false;
    this.puntaje = 0;
    this.sprite = new SpriteComponent("SpriteTank3.png", 150, 150, 1.5);
    this.animacionEstado = StateMachineAnimacion.MOV_RUEDAS;
  }

  // -- MÉTODOS --
  public void display() { //Metodo que dicuja el tanque
    println(this.puntaje);
    //imagen.draw();
    this.sprite.render(this.animacionEstado, new PVector(this.transform.posicion.x, this.transform.posicion.y));
    this.colider.transform = this.transform;
    if (keyPressed) {
      this.animacionEstado = StateMachineAnimacion.MOV_RUEDAS;
      if (keyCode == UP) {
        transform.move(0, -5, 1);
        this.sprite.render(this.animacionEstado, new PVector(this.transform.posicion.x, this.transform.posicion.y));
      } else if (keyCode == DOWN) {
        transform.move(0, 5, 1);
        this.sprite.render(this.animacionEstado, new PVector(this.transform.posicion.x, this.transform.posicion.y));
      }
    } else {
      this.animacionEstado = StateMachineAnimacion.REPOSO;
      this.sprite.render(this.animacionEstado, new PVector(this.transform.posicion.x, this.transform.posicion.y));
    }
    this.colider.displayCircle(0); //Muestra el radio de colision

    // evita que el jugador salga de la pantalla
    if (this.transform.posicion.y - this.colider.radio <= 5) {
      this.transform.posicion.y = this.colider.radio + 5;
    }
    if (this.transform.posicion.y + this.colider.radio >= height - 5) {
      this.transform.posicion.y = (height - 5) - this.colider.radio;
    }
  }

  public void disparar() { //Metodo para disparar, añadiendo balasal gestor balas creado en el escenario
    escenario.gestorBalas.addBullet(new Bala(transform.posicion.copy()));
    this.sprite.render(this.animacionEstado, new PVector(this.transform.posicion.x, this.transform.posicion.y));
  }
  public void sumarPunto(int puntos) { //Metodo para sumar el puntaje del jugador para ganar
    this.puntaje+= puntos;
  }
}
