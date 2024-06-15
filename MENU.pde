// Clase que
class MENU{
 private PImage menuImage;
 
// -- CONSTRUCTORES --
 public MENU(){
  menuImage = loadImage("Menu.png"); 
 }
 
// -- MÉTODOS -- 
 public void display(){
  imageMode(CENTER);
  image(menuImage, width/2, height/2); 
 }
  
}
