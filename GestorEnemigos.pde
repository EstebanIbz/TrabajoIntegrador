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
    float posX = width; // Posición X en el borde izquierdo, un poco más allá del borde

    enemigos.add(new Enemigo(new PVector(posX, posY)));
  }

   public void eliminarEnemigos(GestorBalas gestorBalas) {
        for (int i = enemigos.size() - 1; i >= 0; i--) {
            Enemigo enemigo = enemigos.get(i);
        for (int j = gestorBalas.getBalas().size() - 1; j >= 0; j--){
         Bala bala = gestorBalas.getBalas().get(j);
         if(bala.getCollider().verificarColision(enemigo.getCollider())){
         enemigo.disminuirVida(bala.daño());
         gestorBalas.eliminarBala(j);
         break;
         }
       }
       
       if (!enemigo.estaVivo()){
       enemigos.remove(i);
       generarEnemigo();
       }
      }
     }
 public void display() {
        for (Enemigo enemigo : enemigos) {
            enemigo.display();
        }
    }
} 
