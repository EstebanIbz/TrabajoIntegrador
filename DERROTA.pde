// Clase de DERROTA del StateMachine
class Derrota {
  private PImage DerrotaImage; //Atributo de la imagen de DERROTA


  // -- CONSTRUCTORES --
  public Derrota() { //Constructor por defecto
    this.DerrotaImage = loadImage("Defeat.png");
  }

  // -- MÉTODOS --
  public void display() { //Dibuja la imagen de DERROTA
    imageMode(CENTER);
    image(DerrotaImage, width/2, height/2);
  }
}
