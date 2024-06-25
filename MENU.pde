// Clase del MENU del StateMachine
class MENU{
 private PImage menuImage;
 private PImage tituloJuego;
 private Gif pantallaInicio;
 
// -- CONSTRUCTORES --
// Constructor por defecto
 public MENU(){
    menuImage = loadImage("Menu.png"); 
  tituloJuego= loadImage("titulo.png");
 }
 
// -- MÉTODOS -- 
// Constructor para dibujar la imagen del Menu
 public void display(){
  imageMode(CENTER);
  image(menuImage, width/2, height/2); 
  image(tituloJuego, width/5, height/4, 300 ,300);
 }
 public void displayTexto(){
    textAlign(CENTER, CENTER);
    fill(#FFFFFF);
    textSize(80);
    text("Haga clic para iniciar", width/2, height-100);
 }

  public void displayTitulo(){
    this.pantallaInicio.play();   
  }
}
