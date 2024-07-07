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
      //bala.transform.move(15, 0);   
      if (bala.fueraDePantalla()){
       eliminarBala(i);
      }
    }
  }

  public void addBullet(Bala bala) {
    this.balas.add(bala);
  }
  
 public void verificarColision(ArrayList<Enemigo> enemigos) {
        for (int i = balas.size() - 1; i >= 0; i--) {
            Bala bala = balas.get(i);
        for(int j = enemigos.size() -1;j >= 0; j--){
            Enemigo enemigo = enemigos.get(j);
             if (bala.getCollider().verificarColision(enemigo.getCollider())) {
                enemigo.disminuirVida(bala.daño());
                 eliminarBala(i);
                 break;        
       }
     }
   }
 }
  public void eliminarBala(int index) {
    balas.remove(index);
  }
  public ArrayList<Bala> getBalas(){
    return balas;
  }
 }
  
