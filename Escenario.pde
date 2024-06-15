// Clase que representa el escenario que se muestra en el estado ESCENARIO
class Escenario{
  private Tanque tanque;
  private GestorPowerUps gestorPowerUps;
  private GestorEnemigos gestorEnemigos;
  private PImage escenarioImage;
  
// -- CONSTRUCTORES --
  public Escenario(){
    escenarioImage = loadImage("Preview.png"); 
  }
  
// -- MÉTODOS -- 
  public void display(){
    imageMode(CENTER);
    image(escenarioImage, width/2, height/2);
  }
  
}
