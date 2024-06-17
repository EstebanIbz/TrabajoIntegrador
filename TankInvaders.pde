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
  size(1000,720); // Tamaño de la ventana
  estado = StateMachine.MENU; // Se inicia el estado del juego en el MENU
  menu = new MENU(); // Creamos el objeto menu de tipo MENU
  escenario = new Escenario(); // Creamos el objeto escenario de tipo ESCENARIO

} // FIN SETUP
 
//Draw, se actualiza cada () tiempo
void draw(){
  
// Realizamos las transiciones de las pantallas segun el estado
  switch (estado) {
   case StateMachine.MENU:
   menu.display(); //Visualizacion del MENU
   menu.displayTexto();
   break;
   
   case StateMachine.ESCENARIO:
   escenario.display(); //Visualizacion del ESCENARIO
   break;
   
   case StateMachine.DERROTA:
   break;
   
   case StateMachine.VICTORIA:
   break;
  }
} //FIN DRAW

// -- METODOS DE PROCESSING -- 

// REALIZA UNA ACCION SEGÚN EL CLICK DEL RATÓN
public void mousePressed(){
// Cuando el usuario esta en la pantalla MENU debe hacer click para cambiar a la pantalla ESCENARIO
 if(estado==StateMachine.MENU){
  estado=StateMachine.ESCENARIO; 
  println("MENU");
 }
 // Cuando el usuario esta en la pantalla ESCENARIO debe hacer click para cambiar a la pantalla DERROTA
  else if(estado==StateMachine.ESCENARIO){
  estado=StateMachine.DERROTA; 
  println("ESCENARIO");
 }
 // Cuando el usuario esta en la pantalla DERROTA debe hacer click para cambiar a la pantalla MENU
  else if(estado==StateMachine.DERROTA){
  estado=StateMachine.MENU; 
   println("DERROTA");
 }
 // Cuando el usuario esta en la pantalla VICTORIA debe hacer click para cambiar a la pantalla MENU
 else if(estado==StateMachine.VICTORIA){
  estado=StateMachine.MENU; 
   println("VICTORIA");
 }
}

// REALIZA UNA ACCIÓN SEGÚN EL INPUT DEL TECLADO
public void keyPressed(){
  
}
