// Clase que controla la velocidad de ejecución del juego
class DeltaTime {
  private float lastTime; //Atributo para calcular el tiempo transcurrido
  private float deltaTime; //Atributo para calcular el tiempo transcurrido

  // -- CONSTRUCTORES --
  public DeltaTime() { //Constructor por defecto
    lastTime = millis();
    deltaTime = 1;
  }

  // -- MÉTODOS --
  public void update() { //Calcula el deltaTime
    float currentTime = millis();
    deltaTime = (currentTime - lastTime) / 1000.0;
    lastTime = currentTime;
  }

  public float getDeltaTime() { //Devuelve el deltaTime
    return deltaTime;
  }
}
