// Clase que representa el escenario que se muestra en el estado ESCENARIO
class Escenario {
  private Tanque tanque;
  private GestorPowerUps gestorPowerUps;
  private GestorEnemigos gestorEnemigos;
  private PImage escenarioImage;

  // -- CONSTRUCTORES --
  public Escenario() { //Constructor por defecto
    spriteTanque = loadImage("1.png");
    escenarioImage = loadImage("Preview.png");
    tanque = new Tanque(new PVector(width/6,height/2));
  }

  // -- MÉTODOS --
  public void display() {
    imageMode(CENTER);
    image(escenarioImage, width/2, height/2);
    this.tanque.display();
  }
}
