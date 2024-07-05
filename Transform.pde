// Clase que modifica la posicion de los objetos
class Transform {
  private PVector posicion; //Posicion de objeto
  private PVector escala; //Escala del objeto

  // -- CONSTRUCTORES --
  public Transform(PVector posicion, PVector Escala) { //Constructor parametrizado
    this.posicion = posicion;
    this.escala = escala;
  }
}
