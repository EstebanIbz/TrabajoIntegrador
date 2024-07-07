//Clase de Bala para las balas que va a dispararel Tanque
class Bala {
  private Transform transform; //Atributo para modificar la posicion de la bala
  private Collider colision; // Atributo para la colision de la bala con el enemigo
  private ImageComponent imagen; //Atributo que contiene la imagen de la bala
  private float velocidad; //Atributo para modificar la velocidad de la bala
  private int daño;

  // -- CONSTRUCTORES --
  public  Bala(PVector posicion) { //Constructor por defecto
    this.velocidad = 2;
    this.daño = 5;
    this.transform = new Transform(posicion , new PVector (0.2, 0.2));
    this.colision = new Collider(transform, 50);
    this.imagen = new ImageComponent("Bala.png", transform);
  }

  // -- MÉTODOS --
  public void display() {
    imagen.draw();
    transform.move(5,0);
  }
  public PVector getPosicion(){
  return transform.posicion;
  }
  
  public Collider getCollider(){
  return colision;
  }
  
  public int daño(){
  return daño;
  }

  public boolean fueraDePantalla(){
    return transform.posicion.x < 0 || transform.posicion.x > width || transform.posicion.y < 0 || transform.posicion.y > height; 
  }
}
