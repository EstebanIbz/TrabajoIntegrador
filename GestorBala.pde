// Clase que contiene el Arraylist de balas, gestiona la aparición de balas
class GestorBalas {
  private ArrayList <Bala> balas;
  // -- CONSTRUCTORES --
  public GestorBalas() {
    this.balas = new ArrayList<Bala>();//Constructor por defecto
  }

  // -- MÉTODOS --
     public void updateBalas(GestorEnemigos gestorEnemigos) {
        ArrayList<Bala> balasAEliminar = new ArrayList<Bala>();
        ArrayList<Enemigo> enemigos = gestorEnemigos.getEnemigos();

        for (Bala bala : balas) {
            bala.display();
            boolean colisionDetectada = false;

            for (Enemigo enemigo : enemigos) {
                if (bala.verificarColisionEnemigo(enemigo)) {
                    println("Hay colisión");
                    colisionDetectada = true;
                    break;
                }
            }

            if (colisionDetectada || bala.fueraDePantalla()) {
                balasAEliminar.add(bala);
            }
        }

        balas.removeAll(balasAEliminar);
    }

  public void addBullet(Bala bala) {
    this.balas.add(bala);
  }

  public ArrayList<Bala> getBalas() {
    return balas;
  }
}
