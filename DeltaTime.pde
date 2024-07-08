// Clase que controla la velocidad de ejecución del juego
class DeltaTime {
  private float lastTime;
  private float deltaTime;

  // -- CONSTRUCTORES --
  public DeltaTime() { //Constructor por defecto
    lastTime = millis();
    deltaTime = 1;
  }

  // -- MÉTODOS --
  public void update() {
    float currentTime = millis();
    deltaTime = (currentTime - lastTime) / 1000.0;
    lastTime = currentTime;
  }

  public float getDeltaTime() {
    return deltaTime;
  }
}
