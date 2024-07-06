//Clase que dibuja los sprites usadas en el juego
class ImageComponent {
  private PImage imagen; //Atributo para contener las imagenes
  private Transform transform; //Atributo para modificar su posicion

  // -- CONSTRUCTORES --
  public ImageComponent(PImage imagen, Transform transform) {//Constructor parametrizado
    this.imagen = imagen;
    this.transform = transform;
  }

  public void displayImage(PVector posicion) {
  }
}
