//Clase que dibuja los sprites usadas en el juego
class ImageComponent {
  private PImage image;
  private Transform transform;

  // -- CONSTRUCTORES --
  public ImageComponent(String imagePath, Transform transform) {
    this.transform = transform;
    this.image = loadImage(imagePath);
  }

  public void draw() {
      imageMode(CENTER);
      image(image, transform.posicion.x, transform.posicion.y, image.width * transform.escala.x, image.height * transform.escala.y);
  }
}
