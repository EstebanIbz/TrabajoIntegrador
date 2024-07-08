// Clase que contiene el Arraylist de balas, gestiona la aparición de balas
class GestorBalas {
  private ArrayList <Bala> balas; //Lista de balas
  // -- CONSTRUCTORES --
  public GestorBalas() {
    this.balas = new ArrayList<Bala>();//Constructor por defecto
  }

  // -- MÉTODOS --
     public void updateBalas(GestorEnemigos gestorEnemigos) { //Metodo que actualiza la posicion de las balas y verifica las colisiones de estas
        ArrayList<Bala> balasAEliminar = new ArrayList<Bala>();
        ArrayList<Enemigo> enemigos = gestorEnemigos.getEnemigos();

        for (Bala bala : balas) { //Verificacion de la colision de las balas
            bala.display();
            boolean colisionDetectada = false;

            for (Enemigo enemigo : enemigos) { //verificacion de la colision del enemigo
                if (bala.verificarColisionEnemigo(enemigo)) {
                    println("Hay colisión");
                    colisionDetectada = true;
                    break;
                }
            }
            if (colisionDetectada || bala.fueraDePantalla()) { //Elimina las balas 
                balasAEliminar.add(bala);
            }
        }
        balas.removeAll(balasAEliminar); //Remueve las balas de la pantalla
    }

  public void addBullet(Bala bala) { //Metodo que añade las balas
    this.balas.add(bala);
  }

  public ArrayList<Bala> getBalas() { //Metodo que devuelve la lista de balas
    return balas;
  }
}
