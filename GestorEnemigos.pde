// Clase que contiene el Arraylist de enemigos, gestiona la aparición de enemigos
class GestorEnemigos {
  private ArrayList<EnemigoCactus> enemigosCactus;
  private ArrayList<EnemigoPiedra> enemigosPiedras;

  // -- CONSTRUCTORES --
  public GestorEnemigos() { // constructor por defecto
    enemigosCactus = new ArrayList<EnemigoCactus>();
    enemigosPiedras = new ArrayList<EnemigoPiedra>();
    generarEnemigo();
  }

  // -- MÉTODOS --
  public void generarEnemigo() { //Metodo que genera los enemigos
    float posY = random(height); // Posición Y aleatoria en la altura de la pantalla
    float posX = width-50; // Posición X en el borde izquierdo, un poco más allá del borde

    enemigosCactus.add(new EnemigoCactus(new PVector(posX, posY)));
    enemigosPiedras.add(new EnemigoPiedra(new PVector(posX, posY)));
  }

  public void eliminarEnemigos() { //Metodo que elimina los enemigos
    for (int i = enemigosCactus.size() - 1; i >= 0; i--) {
      Enemigo enemigo = enemigosCactus.get(i);

      if (enemigo.fueraDePantalla()) { //Elimina los enemigos fuera de la pantalla
        enemigosCactus.remove(i);
        generarEnemigo();
        println("Se elimina el enemigo");
      }

      if (!enemigo.estaVivo()) { //Verifica si el enemigo sigue con vida
        escenario.tanque.sumarPunto();
        enemigosCactus.remove(i);
        generarEnemigo();
      }
      if (enemigo.verificarColisionTanque(escenario.tanque)) { //Verifica la colision del tanque para perder
        escenario.tanque.perder = true;
      }
    }
    
    // aqui va otro for
  }
  public void display() { //Dibuja a los enemigos
    for (Enemigo enemigo : enemigosCactus) {
      enemigo.display();
    }
  }
  
  // añadir otro for
  public ArrayList<EnemigoCactus> getEnemigos() { //Devuelve la lista de enemigos
    return enemigosCactus;
  }
  
  // añadir public arraylist
}
