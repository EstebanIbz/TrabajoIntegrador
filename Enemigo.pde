// Clase del objeto enemigo, representa el enemigo
class Enemigo {
  private int vida; //Atributo que
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
  public boolean estaVivo() {
    return vida > 0;
  }
  public PVector getPosicion() {
    return transform.posicion;
  }

  public Collider getCollider() {
    return colision;
  }
  public void display() {
    imagen.draw();
    this.transform.move(-4,0, 1);
    //this.colision.displayCircle(0); //Muestra el radio de colision
   
  }
  
   public boolean fueraDePantalla(){
    return transform.posicion.x < 0 || transform.posicion.x > width || transform.posicion.y < 0 || transform.posicion.y > height; 
  }
  
  public boolean verificarColisionTanque(Tanque jugador){
    if(colision.verificarColision(jugador.colider)){
      return true;
    }
    return false;
  }
}
