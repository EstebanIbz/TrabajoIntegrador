import gifAnimation.*;
// Clase del MENU del StateMachine
class MENU {
  //private PImage menuImage;
  //private PImage tituloJuego;
  Gif myGif;
  

  // -- CONSTRUCTORES --
  // Constructor por defecto
  public MENU() {
    //menuImage = loadImage("Menu.png");
    //tituloJuego= loadImage("titulo.png");  
  }
  public MENU(PApplet p){
   myGif = new Gif(p,"PI.gif");
   myGif.loop();
  }

  // -- MÉTODOS --
  // Constructor para dibujar la imagen del Menu
  public void display() {//Metodo para dibujar la imagen del menu
  if(myGif != null){
  image(myGif, 0,0);
    //image(menuImage, width/2, height/2);
    //image(tituloJuego, width/5, height/4, 300, 300); 
    }
  }
 
  
  public void displayTexto() { //metodo para dibujar el texto del menu
    textAlign(CENTER, CENTER);
    fill(#FFFFFF);
    textSize(80);
    text("Haga clic para iniciar", width/2, height-100);
  }
}
