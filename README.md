# Juego-de-Piedra-Papel-y-Tijera-en-Bash-Script
Recreación del juego de piedra,papel y tijera en Bash script por Jeff McWill.

Este juego es sumamente sencillo de recrear en otros lenguajes de programacion como
Python, pero en bash es ciertamente diferente.

primero el codigo inicia ejecutando $rps (rock,paper,scissors), usa el bucle Until
que se ejecuta hasta que nosotros, el usuario, pongamos 4 para salir.
se añade 4 de las elecciones, la primera piedra, segunda papel y tercera tijera,
el usuario al elegir alguno de ellos, se ejecuta como numero, no como string, luego
para añadirle cierta inteligencia al pc, se añade la funcion $RANDOM que elige entre
3 numeros. el modulo random elije, por ejemplo, el numero 2 y el jugador 1, que se convertirian
papel (pc) y piedra (jugador), dando asi que vaya a mas abajo donde estan las condiciones y
de como resultado que el jugador pierda.

producto del bucle until, el juego se seguira ejecutando hasta que presionemos el numero 4
que rompera el bucle y dara las estadisticas del juego, aqui aparece la funcion $COUNTER y sus
respectivas variaciones, para poner las veces que el jugador pierde,gana y empata. todo esto
al final del juego te muestra las veces que ganaste y perdiste.

el codigo tomo su momento, ya que el modulo random de bash no es como en python, suele dar numeros
erroneos o no dar numero y por ende el resultado para dar alguna especie de condicion,  que podria ser nada.
este error suele persistir en cualquier momento de la ejecucion del script, pero se corrije automaticamente
de todas formas, este codigo que escribi, funciona perfectamente y es jugable.

muchas gracias Jeff McWill 4/11/22.
