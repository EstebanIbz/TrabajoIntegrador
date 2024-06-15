// -- DECLARANDO LAS VARIABLES --
// Representación de los enemigos
private PImage spriteEnemigo, spriteBala, spritePowerUp, spriteTanque, fondo;
// Estado del juego, los valores que adquiere el StateMachine
private int estado;
// Menu del juego, un valor del StateMachine
private MENU menu;
// Escenario del juego, un valor del StateMachine
private Escenario escenario;

// -- FINALIZANDO LA DECLARACIÓN DE VARIABLES --

// Setup, se ejecuta una vez 
void setup(){
  size(600,600); // Tamaño de la ventana
  estado = StateMachine.MENU; // Se inicia el estado del juego en el MENU
  menu = new MENU(); // Creamos el objeto menu de tipo MENU
  escenario = new Escenario(); // Creamos el objeto escenario de tipo ESCENARIO

}

void draw(){
  
  
  switch (estado) {
   case StateMachine.MENU:
   menu.display();
   break;
   
   case StateMachine.ESCENARIO:
   escenario.display();
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
