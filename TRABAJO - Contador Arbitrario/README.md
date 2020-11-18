# COMPUTADORES I - Trabajo Contador Arbitrario

_Diseño y codigo de un contador arbitrario de 4 bits._

_Primero se realizarán el diagrama de transición de estados, tabla de transciciones y
finalmente los mapas de Karnaugh de todas las J y K. Una vez todo planeado programaremos
utilizando [Verilog](https://en.wikipedia.org/wiki/Verilog) el contador simulando el comportamiento del circuito. 
Además mostraremos la salida del biestable en GTKWave_


## DIAGRAMA DE ESTADOS
_La secuencia a realizar es: 5 - 14 - 3 - 6 - 12 - 11 - 13 - 4_

_El diagrama elegido (entre las diferentes opciones posibles) es el siguiente:_

<p align="center">
  <img src="https://github.com/Andresblz/Computadores-I-USAL/blob/main/TRABAJO%20-%20Contador%20Arbitrario/Diagramas%20y%20mapas/Diagrama%20de%20Transicio%CC%81n.png">
</p>


## TABLA DE TRANSICIONES
_A partir del diagrama de estados anterior, escribimos las J y K de los biestables
en función de las salidas Q3, Q2, Q1, Q0._

_La tabla de transiciones quedaría entonces de la siguiente forma:_

<p align="center">
  <img src="https://github.com/Andresblz/Computadores-I-USAL/blob/main/TRABAJO%20-%20Contador%20Arbitrario/Diagramas%20y%20mapas/Tabla%20de%20transiciones.png">
</p>


## MAPAS DE KARNAUGH:
_Utilizando la tabla de transiciones como referencia, podemos sacar cada una de las
entradas de los biestables escribiendo sus [Mapas de Karnaugh](https://es.wikipedia.org/wiki/Mapa_de_Karnaugh). La negación la
realizamos mediante el símbolo '_

<p align="center">
  <img src="https://github.com/Andresblz/Computadores-I-USAL/blob/main/TRABAJO%20-%20Contador%20Arbitrario/Diagramas%20y%20mapas/Karnaugh.png">
</p>


## CIRCUITO
_Una vez hemos terminado los Mapas de Karnaugh realizamos un esquema del circuito
final que obtendríamos._ 
_En este caso es el siguiente:_

<p align="center">
  <img src="https://github.com/Andresblz/Computadores-I-USAL/blob/main/TRABAJO%20-%20Contador%20Arbitrario/Circuito/Circuito.png">
</p>


## PROGRAMA EN VERILOG
_El [código](https://github.com/Andresblz/Computadores-I-USAL/blob/main/TRABAJO%20-%20Contador%20Arbitrario/Codigo/Biestable.v) está formado por diferentes módulos (JDK, contador y test)._


## GTKWAVE
_La salida que obtenemos del biestable en [GTKWave](http://gtkwave.sourceforge.net/) es la siguiente:_

<p align="center">
  <img src="https://github.com/Andresblz/Computadores-I-USAL/blob/main/TRABAJO%20-%20Contador%20Arbitrario/Cronograma/GTKWave.jpg">
</p>
