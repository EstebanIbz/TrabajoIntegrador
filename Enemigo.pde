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
  this.transform = new Transform(posicion, new PVector (3.5, 3.5));
  this.colision = new Collider(transform, 50);
  this.imagen = new ImageComponent("Cactus1.png", transform);
  }

  // -- MÉTODOS --
  public void disminuirVida(int daño) {
    vida-= daño;
  }
  public boolean estaVivo(){
    return vida > 0;
  }
  public PVector getPosicion(){
    return transform.posicion;
  }
  
  public Collider getCollider(){
    return colision;
  }
  public void display() {
    imagen.draw();
  }    
}
