// Clase del objeto enemigo, representa el enemigo
class EnemigoCactus extends Enemigo {
  

  // -- CONSTRUCTORES --
  public EnemigoCactus(PVector posicion) { //Constructor parametrizado
  super(posicion,20,30,"Cactus1.png");  
  this.transform = new Transform(posicion, new PVector(0.1,0.1));
  }
}
