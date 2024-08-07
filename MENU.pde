// Clase del MENU del StateMachine
class MENU {
   Gif myGif; //Atributo que contiene el gif
  // -- CONSTRUCTORES --
  public MENU(PApplet p) { //Constructor para dibujar el gif del Menu
    myGif = new Gif(p, "PI.gif");
    myGif.loop();
  }

  // -- MÉTODOS --
  // Constructor para dibujar la imagen del Menu
  public void display() {//Metodo para dibujar la imagen del menu   
    imageMode(CORNER);
    image(myGif, 0, 0);   
  }

  public void displayTexto() { //metodo para dibujar el texto del menu
    textAlign(CENTER, CENTER);
    fill(#000000);
    textSize(60);
    text("Haga clic para iniciar", width/2, height-100);
  }
}
