// mouse, by lmcapacho
import processing.serial.*;

Maze maze;

// El puerto serial
//Serial myPort;

void setup() {

  // Tamaño de la ventana
  size(400, 400);

  // Tamaño fuente
  textSize(20);
  // Color de fondo de la ventana 
  background(51);
  // Alineación del texto
  textAlign(CENTER, CENTER);

  // Crea una nueva cuadrícula de 6 x 6   
  maze = new Maze(6);
  // Abre el puerto serial con velocidad de 9600 baudios
  //myPort = new Serial(this, "/dev/ttyUSB1", 9600);
  //myPort.clear();
  
  // Ejemplo: Coloca pared en norte y este de la celda 2,2 
  maze.setWalls(4,4, Maze.NORTH | Maze.EAST | Maze.SOUTH );
   //maze.setWalls(4,4, Maze.SOUTH | Maze.WEST );
}
int i=0, j=0;
void draw() { 
  
  maze.setMouse(i,j);
  maze.display();
  delay(1000);
  i++;
  
  if(i>5) {
    i=0;
    j++;
    if(j>5)j=0;}
    
  /*while (myPort.available() > 0) {
    byte[] inBuffer = new byte[11];
    if( myPort.readBytesUntil('\n', inBuffer) > 0){
      String myString = new String(inBuffer);
      print(int(myString.substring(0,3)));
      print(int(myString.substring(3,6)));
      println(int(myString.substring(6,9)));
    }  
  }*/
}