class Escenario{
  private Tanque tanque;
  private GestorPowerUps gestorPowerUps;
  private GestorEnemigos gestorEnemigos;
  private PImage escenarioImage;
  
  public Escenario(){
    escenarioImage = loadImage("Preview.png"); 
  }
  public void display(){
    imageMode(CENTER);
    image(escenarioImage, width/2, height/2);
  }
  
}
