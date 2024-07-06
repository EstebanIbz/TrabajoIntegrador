// Clase de VICTORIA del StateMachine
class Victoria {
  private PImage WinImage;
  // -- CONSTRUCTORES --
  public Victoria() { //Constructor por defecto
    this.WinImage = loadImage("Win.png");
  }

  // -- MÉTODOS --
  public void display() {
    imageMode(CENTER);
    image(WinImage, width/2, height/2);
  }
}
