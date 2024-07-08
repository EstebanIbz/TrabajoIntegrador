// Clase que modifica la posicion de los objetos
class Transform {
  private PVector posicion; //Posicion de objeto
  private PVector escala; //Escala del objeto

// Constructor parametrizado
  public Transform(PVector posicion, PVector escala) {
    this.posicion = posicion;
    this.escala = escala;
  }

  // Constructor por defecto
  public Transform() {
    this(new PVector(0, 0), new PVector(1, 1)); // Valores por defecto
  }
  void move(float x, float y, float deltaTime) {
    posicion.add(x * deltaTime, y * deltaTime);
  }
   public PVector getPosicion() {
    return posicion;
  }

  public PVector getEscala() {
    return escala;
  }
}
