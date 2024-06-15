private PImage spriteEnemigo, spriteBala, spritePowerUp, spriteTanque, fondo;
private int estado;
private MENU menu;

void setup(){
  size(600,600);
  estado = StateMachine.MENU;
  menu = new MENU();

}

void draw(){
  
  
  switch (estado) {
   case StateMachine.MENU:
   menu.display();
   break;
   
   case StateMachine.ESCENARIO:
   break;
   
   case StateMachine.DERROTA:
   break;
   
   case StateMachine.VICTORIA:
   break;
  }
}

public void mousePressed(){
 if(estado==StateMachine.MENU){
  estado=StateMachine.ESCENARIO; 
  println("MENU");
 }
  else if(estado==StateMachine.ESCENARIO){
  estado=StateMachine.DERROTA; 
  println("ESCENARIO");
 }
  else if(estado==StateMachine.DERROTA){
  estado=StateMachine.MENU; 
   println("DERROTA");
 }
 else if(estado==StateMachine.VICTORIA){
  estado=StateMachine.MENU; 
   println("VICTORIA");
 }
}

public void keyPressed(){
  
}
