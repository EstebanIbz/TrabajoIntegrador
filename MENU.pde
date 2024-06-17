// Clase del MENU del StateMachine
class MENU{
 private PImage menuImage;
 
// -- CONSTRUCTORES --
// Constructor por defecto
 public MENU(){
  menuImage = loadImage("Menu.png"); 
 }
 
// -- MÉTODOS -- 
// Constructor para dibujar la imagen del Menu
 public void display(){
  imageMode(CENTER);
  image(menuImage, width/2, height/2); 
 }
 public void displayTexto(){
    fill(#799D10);
    textAlign(CENTER, CENTER);
    text("Tank Invader", width/2, 90);
    fill(#799D10);
    textSize(80);
    text("Haga clic para iniciar", width/2, height-100);
 }

  
}
