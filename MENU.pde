class MENU{
 private PImage menuImage;
 
 public MENU(){
  menuImage = loadImage("Menu.png"); 
 }
 
 public void display(){
  imageMode(CENTER);
  image(menuImage, width/2, height/2); 
 }
  
}
