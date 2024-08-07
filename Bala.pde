//Clase de Bala para las balas que va a dispararel Tanque
class Bala {
  private Transform transform; //Atributo para modificar la posicion de la bala
  private Collider colision; // Atributo para la colision de la bala con el enemigo
  private ImageComponent imagen; //Atributo que contiene la imagen de la bala
  private float velocidad; //Atributo para modificar la velocidad de la bala
  private int daño; //Atributo que marca el daño de la bala

  // -- CONSTRUCTORES --
  public  Bala(PVector posicion) { //Constructor por defecto
    this.velocidad = 300;
    this.daño = 5;
    this.transform = new Transform(posicion, new PVector (0.2, 0.2));
    this.colision = new Collider(transform, 50);
    this.imagen = new ImageComponent("Bala.png", transform);
  }

  // -- MÉTODOS --
  public void display() { //Dibuja las balas
    imagen.draw();
    transform.move(this.velocidad, 0); //Mueve la posicion de la bala en horizontal
    this.colision.displayCircle(0); //Muestra el radio de colision
  }
  public PVector getPosicion() { //Nos da la posicion de la bala
    return transform.posicion;
  }

  public Collider getCollider() { //Nos da el componente collider
    return colision;
  }

  public boolean fueraDePantalla() { //Metodo que verifica si una bala se sale de la pantalla
    return transform.posicion.x < 0 || transform.posicion.x > width || transform.posicion.y < 0 || transform.posicion.y > height;
  }

  public boolean verificarColisionEnemigo(Enemigo enemigo) { //Metodo para verificar la colision de la bala con el enemigo
    if (colision.verificarColision(enemigo.colision)) {
      enemigo.disminuirVida(daño);
      return true;
    }
    return false;
  }
}
