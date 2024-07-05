//IMPORTACION DE BIBLIOTECAS//
import ddf.minim.*; // importando bibliotecas para reproducir sonidos

import gifAnimation.*; // importando biblioteca para reproducir archivos .GIF

// -- DECLARANDO LAS VARIABLES --
// Representación de los enemigos
private PImage spriteEnemigo, spriteBala, spritePowerUp, spriteTanque;
private PImage fondo, DerrotaImage, WinImage, IngameImage;
// Estado del juego, los valores que adquiere el StateMachine
private int estado;
// Menu del juego, un valor del StateMachine
private MENU menu;
// Escenario del juego, un valor del StateMachine
private Escenario escenario;
// Derrota del juego , un valor del StateMachine
private Derrota derrota;
// Victoria del juego , un valor del StateMachine
private Victoria win;
// Variables para la musica
private Minim minim;
private AudioPlayer musicaTitulo;
private AudioPlayer Gameplaysong;
private AudioPlayer LostSong;
private AudioPlayer WinSong;
// -- FINALIZANDO LA DECLARACIÓN DE VARIABLES --

// Setup, se ejecuta una vez
void setup() {
  size(1000, 620); // Tamaño de la ventana
  estado = StateMachine.MENU; // Se inicia el estado del juego en el MENU
  menu = new MENU(); // Creamos el objeto menu de tipo MENU
  escenario = new Escenario(); // Creamos el objeto escenario de tipo ESCENARIO
  derrota = new Derrota(); // Creamos el objeto derrota tipo DERROTA
  win = new Victoria();

  // definicion de la musica y sonidos del juego
  minim = new Minim(this);
  musicaTitulo = minim.loadFile("OST.mp3"); //  La musica se carga
  musicaTitulo.loop(); // La cancion se reproduce indefinidamente
  Gameplaysong = minim.loadFile("Gameplay.mp3"); // carga la musica del estado Jugando
  LostSong = minim.loadFile("lost.mp3");
  WinSong = minim.loadFile("win.mp3");
} // FIN SETUP

//Draw, se actualiza cada () tiempo
void draw() {

  // Realizamos las transiciones de las pantallas segun el estado
  switch (estado) {
  case StateMachine.MENU:
    menu.display(); //Visualizacion del MENU
    menu.displayTexto();
    break;

  case StateMachine.ESCENARIO:
    Gameplaysong.play();  // reproducimos la cancion del juego
    escenario.display(); //Visualizacion del ESCENARIO
    break;

  case StateMachine.DERROTA:
    derrota.display(); // visualizacion de DERROTA
    Gameplaysong.pause(); // pausamos la cancion del juego
    LostSong.play(); // reproducimos la cancion de derrota
    break;

  case StateMachine.VICTORIA:
    win.display();
    Gameplaysong.pause(); // pausamos la cancion del juego
    WinSong.play(); // reproducimos la cancion de victoria
    break;
  }
} //FIN DRAW

// -- METODOS DE PROCESSING --

// REALIZA UNA ACCION SEGÚN EL CLICK DEL RATÓN
public void mousePressed() {
  // Cuando el usuario esta en la pantalla MENU debe hacer click para cambiar a la pantalla ESCENARIO
  if (estado==StateMachine.MENU) {
    println("MENU"); // se muestra por consola el escenario anterior
    musicaTitulo.pause(); // pausamos la musica del titulo
    musicaTitulo.rewind(); //Resetamos la musica
    Gameplaysong.rewind();
    estado=StateMachine.ESCENARIO;
  }
  // Cuando el usuario esta en la pantalla ESCENARIO debe hacer click para cambiar a la pantalla DERROTA
  else if (estado==StateMachine.ESCENARIO) {
    estado=StateMachine.DERROTA;
    Gameplaysong.loop(); // se pone en bucle la cancion
    println("ESCENARIO");
  }
  // Cuando el usuario esta en la pantalla DERROTA debe hacer click para cambiar a la pantalla MENU
  else if (estado==StateMachine.DERROTA) {
    estado=StateMachine.MENU;
    LostSong.pause(); // pausamos la musica de derrota
    LostSong.rewind(); // resetamos la musica de derrota
    musicaTitulo.loop(); // ponemos la musica del titulo
    println("DERROTA");
    estado=StateMachine.MENU;
  }
  // Cuando el usuario esta en la pantalla VICTORIA debe hacer click para cambiar a la pantalla MENU
  else if (estado==StateMachine.VICTORIA) {
    estado=StateMachine.MENU;
    WinSong.pause(); // pausamos la musica de victoria
    WinSong.rewind(); // resetamos la musica de victoria
    musicaTitulo.loop();// ponemos la musica del titulo
    println("VICTORIA");
    estado=StateMachine.MENU;
  }
}

// REALIZA UNA ACCIÓN SEGÚN EL INPUT DEL TECLADO
public void keyPressed() {
}
