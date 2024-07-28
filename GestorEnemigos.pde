// Clase que contiene el Arraylist de enemigos, gestiona la aparición de enemigos
class GestorEnemigos {
  private ArrayList<EnemigoCactus> enemigosCactus;
  private ArrayList<EnemigoPiedra> enemigosPiedras;

  // -- CONSTRUCTORES --
  public GestorEnemigos() { // constructor por defecto
    enemigosCactus = new ArrayList<EnemigoCactus>();
    enemigosPiedras = new ArrayList<EnemigoPiedra>();
    generarEnemigoCactus();
    generarEnemigoPiedra();
  }

  // -- MÉTODOS --
  public void generarEnemigoCactus() { //Metodo que genera los enemigos Cactus
    float posY = random(height); // Posición Y aleatoria en la altura de la pantalla
    float posX = width-50; // Posición X en el borde izquierdo, un poco más allá del borde

    enemigosCactus.add(new EnemigoCactus(new PVector(posX, posY)));
  }
   public void generarEnemigoPiedra() { //Metodo que genera los enemigos Piedra
    float posY = random(height); // Posición Y aleatoria en la altura de la pantalla
    float posX = width-50; // Posición X en el borde izquierdo, un poco más allá del borde

    enemigosPiedras.add(new EnemigoPiedra(new PVector(posX, posY)));
  }

  public void eliminarEnemigos() { //Metodo que elimina los enemigos
    for (int i = enemigosCactus.size() - 1; i >= 0; i--) {

      EnemigoCactus enemigoCactus = enemigosCactus.get(i);

      if (enemigoCactus.fueraDePantalla()) { //Elimina los enemigos fuera de la pantalla
        enemigosCactus.remove(i);
        generarEnemigoCactus();
        println("Se elimina el enemigo");
      }

      if (!enemigoCactus.estaVivo()) { //Verifica si el enemigo sigue con vida
        escenario.tanque.sumarPunto();
        enemigosCactus.remove(i);
        generarEnemigoCactus();
      }
      if (enemigoCactus.verificarColisionTanque(escenario.tanque)) { //Verifica la colision del tanque para perder
        escenario.tanque.perder = true;
      }
      
      for (int j = enemigosPiedras.size() -1; j >= 0; j--) {
        EnemigoPiedra enemigoPiedras = enemigosPiedras.get(j);

        if (enemigoPiedras.fueraDePantalla()) { //Elimina los enemigos fuera de la pantalla
          enemigosPiedras.remove(j);
          generarEnemigoPiedra();
          println("Se elimina el enemigo");
        }

        if (!enemigoPiedras.estaVivo()) { //Verifica si el enemigo sigue con vida
          escenario.tanque.sumarPunto();
          enemigosPiedras.remove(j);
          generarEnemigoPiedra();
        }

        if (enemigoPiedras.verificarColisionTanque(escenario.tanque)) { //Verifica la colision del tanque para perder
          escenario.tanque.perder = true;
        }
      }
    }

    // aqui va otro for
  }
  public void display() { //Dibuja a los enemigos
    for (EnemigoCactus enemigoCactus : enemigosCactus) {
      enemigoCactus.display();
    }
    for (EnemigoPiedra enemigoPiedra : enemigosPiedras) {
      enemigoPiedra.display();
    }
  }

  // añadir otro for
  public ArrayList<EnemigoCactus> getEnemigosCactus() { //Devuelve la lista de enemigos
    return enemigosCactus;
  }
  public ArrayList<EnemigoPiedra> getEnemigosPiedra() { //Devuelve la lista de enemigos
    return enemigosPiedras;
  }

  // añadir public arraylist
  public ArrayList <Enemigo> getAllEnemies() {
    ArrayList <Enemigo> allEnemies = new ArrayList <Enemigo> ();
    allEnemies.addAll(enemigosCactus);
    allEnemies.addAll(enemigosPiedras);
    return allEnemies;
  }
}
