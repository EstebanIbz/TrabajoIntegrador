// Clase de DERROTA del StateMachine
class Derrota{
  private PImage DerrotaImage;


// -- CONSTRUCTORES --
  public Derrota(){ //Constructor por defecto
  this.DerrotaImage = loadImage("Defeat.png");
  }
  
  // -- MÉTODOS -- 
  public void display(){
    imageMode(CENTER);
    image(DerrotaImage, width/2, height/2);
  }
}


 
