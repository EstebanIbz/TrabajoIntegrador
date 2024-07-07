// Clase que contiene el Arraylist de balas, gestiona la aparición de balas
class GestorBalas {
  private ArrayList <Bala> balas;
  // -- CONSTRUCTORES --
  public GestorBalas() {
    this.balas = new ArrayList<Bala>();//Constructor por defecto
  }

  // -- MÉTODOS --
  public void updateBalas(){
for (int i = balas.size() - 1; i >= 0; i--) {
      Bala bala = balas.get(i);
      bala.display();
      bala.transform.move(15, 0);   
    }
  }

  public void addBullet(Bala bala) {
    this.balas.add(bala);
  }

  public void eliminarBala() {
  }
}
