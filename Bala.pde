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
    this.daño = 10;
    this.transform = new Transform(posicion, new PVector (0.5, 0.5));
    this.colision = new Collider(transform, 20);
    this.imagen = new ImageComponent("Bala.png", transform);
  }

  // -- MÉTODOS --
  public void display() {
    imagen.draw();
    transform.move(2,0);
    
  }

  public void verificarColision() {
  }
}
