// Clase de VICTORIA del StateMachine
class Victoria {
  private PImage winImage;
  // -- CONSTRUCTORES --
  public Victoria() { //Constructor por defecto
    this.winImage = loadImage("Win.png");
  }

  // -- MÉTODOS --
  public void display() { //Metodo que dibuja la pnatalla de victoria
    imageMode(CENTER);
    image(winImage, width/2, height/2);
  }
}
