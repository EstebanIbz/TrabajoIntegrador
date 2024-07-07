// Clase del objeto enemigo, representa el enemigo
class Enemigo {
  private int vida;
  private int puntaje;
  private ImageComponent imagen;
  private Collider colision;
  private Transform transform;

  // -- CONSTRUCTORES --
  public Enemigo(PVector posicion) { //Constructor por defecto
  this.vida = 20;
  this.puntaje = 10;
  this.transform = new Transform(posicion, new PVector (0.5, 0.5));
  this.colision = new Collider(transform, 20);
  //this.imagen = new ImageComponent("Cactus.png", transform);
  }

  // -- MÉTODOS --
  public void disminuirVida() {
  }

  public void display() {
  }
  
  
}
