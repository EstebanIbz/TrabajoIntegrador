// Clase que representa el escenario que se muestra en el estado ESCENARIO
class Escenario {
  private Tanque tanque;
  private GestorEnemigos gestorEnemigos;
  private GestorBalas gestorBalas;
  private PImage escenarioImage;


  // -- CONSTRUCTORES --
  public Escenario() { //Constructor por defecto
    escenarioImage = loadImage("Preview.png");
    tanque = new Tanque(new PVector(width/6, height/2));
    gestorBalas = new GestorBalas();
    gestorEnemigos = new GestorEnemigos();
  }

  // -- MÉTODOS --
  public void display() { //Metodo para dibujar el escenario de juego y todos los elementos con los que el jugador interactua
    imageMode(CENTER);
    image(escenarioImage, width/2, height/2);
    this.tanque.display();
    gestorEnemigos.display(); //Se visualizan en pantalla los enemigos
    gestorEnemigos.eliminarEnemigos(); //Se eliminan los enemigos cuando se verifica la colision con las balas
    gestorBalas.updateBalas(gestorEnemigos); //Se actualiza la posicion de las balas
    if (escenario.tanque.perder == true) {
      estado=StateMachine.DERROTA;
    }
    if (escenario.tanque.puntaje == 10) {
      estado=StateMachine.VICTORIA;
    }
    println(tanque.perder);
  }
}
