// Clase del objeto enemigo, representa el enemigo
class Enemigo {
  private int vida; //Atributo que establece la vida del enemigo
  private int puntaje; //Puntaje del enemigo
  private ImageComponent imagen; //Componente imagen
  private Collider colision; //Componente collider
  private Transform transform; //Componente transform

  // -- CONSTRUCTORES --
  public Enemigo(PVector posicion) { //Constructor parametrizado
    this.vida = 20;
    this.puntaje = 10;
    this.transform = new Transform(posicion, new PVector (3.5, 3.5));
    this.colision = new Collider(transform, 50);
    this.imagen = new ImageComponent("Cactus1.png", transform);
  }

  // -- MÉTODOS --
  public void disminuirVida(int daño) { //Metodo para disminuir del enemigo
    vida-= daño;
  }
  public boolean estaVivo() { //Metodo para verificar si esta vivo el enemigo
    return vida > 0;
  }
  public PVector getPosicion() { //Metodo que devuelve la posicion del enemigo
    return transform.posicion;
  }

  public Collider getCollider() { //Metodo que devuelve el componente collider
    return colision;
  }
  public void display() { //Metodo para dibujar el enemigo
    imagen.draw();
    this.transform.move(-4,0, 1);
    //this.colision.displayCircle(0); //Muestra el radio de colision
   
  }
  
   public boolean fueraDePantalla(){ //Metodo que verifica si el enemigo sale de la pantalla
    return transform.posicion.x < 0 || transform.posicion.x > width || transform.posicion.y < 0 || transform.posicion.y > height; 
  }
  
  public boolean verificarColisionTanque(Tanque jugador){ //Metodo para verificar la colision del enemigo con el tanque
    if(colision.verificarColision(jugador.colider)){
      return true;
    }
    return false;
  }
}
