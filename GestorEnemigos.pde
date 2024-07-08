// Clase que contiene el Arraylist de enemigos, gestiona la aparición de enemigos
class GestorEnemigos {
  private ArrayList<Enemigo> enemigos;

  // -- CONSTRUCTORES --
  public GestorEnemigos() { // constructor por defecto
    enemigos = new ArrayList<Enemigo>();
    generarEnemigo();
  }

  // -- MÉTODOS --
  public void generarEnemigo() {
    float posY = random(height); // Posición Y aleatoria en la altura de la pantalla
    float posX = width-50; // Posición X en el borde izquierdo, un poco más allá del borde

    enemigos.add(new Enemigo(new PVector(posX, posY)));
  }

  public void eliminarEnemigos() {
    for (int i = enemigos.size() - 1; i >= 0; i--) {
      Enemigo enemigo = enemigos.get(i);

      if (enemigo.fueraDePantalla()) {
        enemigos.remove(i);
        generarEnemigo();
        println("Se elimina el enemigo");
      }

      if (!enemigo.estaVivo()) {
        escenario.tanque.sumarPunto();
        enemigos.remove(i);
        generarEnemigo();
      }
      if (enemigo.verificarColisionTanque(escenario.tanque)) {
        escenario.tanque.perder = true;
      }
    }
  }
  public void display() {
    for (Enemigo enemigo : enemigos) {
      enemigo.display();
    }
  }
  public ArrayList<Enemigo> getEnemigos() {
    return enemigos;
  }
}
