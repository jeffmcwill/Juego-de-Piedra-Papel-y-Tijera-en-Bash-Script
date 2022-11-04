#!/bin/bash
COUNTER=0
COUNTERP=0
COUNTERE=0

function portada() {
echo "-----------------------"
echo "- Piedra,Papel o Bash -"
echo "-----------------------"
}

#contador de ganados y perdidos despues de tocar 4 salir.
function est() {
echo "-------------------------------"
echo "- Partidas ganadas: $COUNTER"
echo "- Partidas perdidas: $COUNTERP"
echo "- Empates: $COUNTERE"
echo "-------------------------------"
}

function rps() {
until [ "$usuario" == 4 ]
do
	echo "--------------"
	echo "1.Piedra"
	echo "2.Papel"
	echo "3.Tijera"
	echo "--------------"
	echo "4.Salir..."
	echo "--------------"
	read -p "Elije: " usuario

	if test "$usuario" -eq 1;then
		echo "> Elegiste Piedra"

	elif test "$usuario" -eq 2;then
		echo "> Elegiste Papel"

	elif test "$usuario" -eq 3;then
		echo "> Elegiste Tijera"

	elif test "$usuario" -eq 4;then
		echo "Elegiste salir"
		est
		exit 0
	fi

	eleccionpc=$(($RANDOM%3))

#elecciones que dan empates:

	if [[ "$usuario" ==  1 && $eleccionpc == 1 ]];then
		#echo $usuario
		echo "> Computadora: Piedra"
		echo "Empate, No gana nadie"
		let COUNTERE++
		sleep 1

	elif [[ "$usuario" == 2 && $eleccionpc == 2 ]];then
		#echo $usuario
		echo "> Computadora: Papel"
		echo "Empate, No gana nadie"
		let COUNTERE++
		sleep 1

	elif [[ "$usuario" == 3 && $eleccionpc == 3 ]];then
		#echo $usuario
		echo "> Computadora: Tijera"
		echo "Empate, No gana nadie"
		let COUNTERE++
		sleep 1

#elecciones que dan como resultado perder al jugador.

	elif [[ "$usuario" == 1 && $eleccionpc == 2 ]];then
		#echo $usuario
		echo "> Computadora: Papel"
		echo "Oh no, el papel de la computadora cubre a tu piedra. Pierdes"
		let COUNTERP++
		sleep 1

	elif [[ "$usuario" == 2 && $eleccionpc == 3 ]];then
		#echo $usuario
		echo "> Computadora: Tijera"
		echo "Oh no, la tijera del pc corta tu papel. Pierdes"
		let COUNTERP++
		sleep 1

	elif [[ "$usuario" == 3 && $eleccionpc == 1 ]];then
		#echo $usuario
		echo "> Computadora: Piedra"
		echo "tu tijera es destruida por la piedra del ordenador. Pierdes"
		let COUNTERP++
		sleep 1

#elecciones que dan como ganador al jugador

	elif [[ "$usuario" == 1 && $eleccionpc == 3 ]];then
		#echo $usuario
		echo "> Computadora: Tijera"
		echo "Tu piedra rompe la tijera del pc. GANASTE"
		let COUNTER++
		sleep 1

	elif [[ "$usuario" == 2 && $eleccionpc == 1 ]];then
		#echo $usuario
		echo "> Computadora: Piedra"
		echo "el papel del jugador cubre la piedra del pc. GANASTE"
		let COUNTER++
		sleep 1

	elif [[ "$usuario" == 3 && $eleccionpc == 2 ]];then
		#echo $usuario
		echo "> Computadora: Papel"
		echo "La tijera corta el papel del pc. Ganaste"
		let COUNTER++
		sleep 1
	fi
done
}

#funcion importante
portada
rps
