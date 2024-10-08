//IMPORTACION DE BIBLIOTECAS//
import ddf.minim.*; // importando bibliotecas para reproducir sonidos

import gifAnimation.*; // importando biblioteca para reproducir archivos .GIF

// -- DECLARANDO LAS VARIABLES --
// Representación de los enemigos

// Estado del juego, los valores que adquiere el StateMachine
private int estado;
// Menu del juego, un valor del StateMachine
private MENU menu;
//

// Escenario del juego, un valor del StateMachine
private Escenario escenario;
// Derrota del juego , un valor del StateMachine
private Derrota derrota;
// Victoria del juego , un valor del StateMachine
private Victoria win;
// Variables para la musica
private Minim minim;
private AudioPlayer musicaTitulo;
private AudioPlayer gameplaySong;
private AudioPlayer lostSong;
private AudioPlayer winSong;
// -- FINALIZANDO LA DECLARACIÓN DE VARIABLES --

// Setup, se ejecuta una vez
void setup() {
  size(1000, 620); // Tamaño de la ventana
  PFont miFuente = createFont("Fuente.ttf", 10);
  textFont(miFuente);
  estado = StateMachine.MENU; // Se inicia el estado del juego en el MENU
  menu = new MENU(this); // Creamos el objeto menu de tipo MENU
  escenario = new Escenario(); // Creamos el objeto escenario de tipo ESCENARIO
  derrota = new Derrota(); // Creamos el objeto derrota tipo DERROTA
  win = new Victoria(); //Creamos la pantalla de victoria
 

  // definicion de la musica y sonidos del juego
  minim = new Minim(this);
  musicaTitulo = minim.loadFile("The Wait.mp3"); //  La musica se carga
  musicaTitulo.loop(); // La cancion se reproduce indefinidamente
  gameplaySong = minim.loadFile("Shellshock.mp3"); // carga la musica del estado Jugando
  lostSong = minim.loadFile("Lose.mp3"); //
  winSong = minim.loadFile("Slayer.mp3"); //
  
  musicaTitulo.setGain(-5); //baja la musica del titulo
  gameplaySong.setGain(-5); //
  winSong.setGain(-5);
  lostSong.setGain(-5);
} // FIN SETUP

//Draw, se actualiza cada () tiempo
void draw() {
  //background(0);

  // Realizamos las transiciones de las pantallas segun el estado
  switch (estado) {
  case StateMachine.MENU:
    menu.display(); //Visualizacion del MENU
    menu.displayTexto();   
    break;

  case StateMachine.ESCENARIO:
    gameplaySong.play();  // reproducimos la cancion del juego
    escenario.display(); //Visualizacion del ESCENARIO
    break;

  case StateMachine.DERROTA:
    derrota.display(); // visualizacion de DERROTA
    gameplaySong.pause(); // pausamos la cancion del juego
    lostSong.play(); // reproducimos la cancion de derrota
    break;

  case StateMachine.VICTORIA:
    win.display();
    gameplaySong.pause(); // pausamos la cancion del juego
    winSong.play(); // reproducimos la cancion de victoria
    break;
  }

} //FIN DRAW

// -- METODOS DE PROCESSING --

// REALIZA UNA ACCION SEGÚN EL CLICK DEL RATÓN
public void mousePressed() {
  // Cuando el usuario esta en la pantalla MENU debe hacer click para cambiar a la pantalla ESCENARIO
  if (estado==StateMachine.MENU) {
    println("MENU>ESCENARIO"); // se muestra por consola el escenario anterior
    musicaTitulo.pause(); // pausamos la musica del titulo
    musicaTitulo.rewind(); //Resetamos la musica del titulo
    gameplaySong.rewind(); //Reseteamos la musica del escenario
    estado=StateMachine.ESCENARIO;//Pasamos a la pantalla escenario 
  }
  
  // Cuando el usuario esta en la pantalla DERROTA debe hacer click para cambiar a la pantalla MENU
  else if (estado==StateMachine.DERROTA) {
    
    estado=StateMachine.MENU;
    lostSong.pause(); // pausamos la musica de derrota
    lostSong.rewind(); // resetamos la musica de derrota
    musicaTitulo.loop(); // ponemos la musica del titulo
    println("DERROTA");
    estado=StateMachine.MENU;
    escenario = new Escenario(); // Creamos el objeto escenario de tipo ESCENARIO
  }
  // Cuando el usuario esta en la pantalla VICTORIA debe hacer click para cambiar a la pantalla MENU
  else if (estado==StateMachine.VICTORIA) {
    estado=StateMachine.MENU;
    winSong.pause(); // pausamos la musica de victoria
    winSong.rewind(); // resetamos la musica de victoria
    musicaTitulo.loop();// ponemos la musica del titulo
    println("VICTORIA");
    estado=StateMachine.MENU;
    escenario = new Escenario(); // Creamos el objeto escenario de tipo ESCENARIO
  }
}

// REALIZA UNA ACCIÓN SEGÚN EL INPUT DEL TECLADO
public void keyReleased() {
 if (keyCode == ENTER) {
    escenario.tanque.disparar();
  }
}
