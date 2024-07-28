// Clase para verificar las colisiones entre los objetos
class Collider {
  private Transform transform; //Atributo para modificar el tamaño de la colision
  private float radio; //Atributo para marcar el radio de colision del objeto

  // -- CONSTRUCTORES --
  public Collider(Transform transform, float radio) { //Constructor parametrizado
    this.transform = transform;
    this.radio = radio;
  }

  // -- MÉTODOS --
  //Metodo para verificar la colision de un obejto con otro
  public boolean verificarColision(Collider otroCollider) {
    float distancia = PVector.dist(this.transform.posicion, otroCollider.transform.posicion);
    return distancia < this.radio + otroCollider.radio;
  }
  
  public void displayCircle(color Color) { //Metodo para dibujar el radio de colision
    stroke(Color);
    strokeWeight(2);
    noFill();
    circle(this.transform.posicion.x, this.transform.posicion.y, this.radio);
  }
  
  
}
