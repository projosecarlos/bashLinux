#!/bin/bash
## José Carlos Vargas Díaz
## 2º DAW

echo ""
echo "CALCULADORA EN BASH"
echo "#####################################################"
echo "1 - Sumar"
echo "2 - Restar"
echo "3 - Dividir"
echo "4 - Multiplicar"
echo "0 - Salir"
echo ""

## Función para comprobar la opción elegida por el usuario
function usuarioElige() {

read -p "Seleccione el tipo de operación: " opcion

	case $opcion in
		0)
			exit
		;;
		1)
			sumar
		;;
		2)
			restar
		;;
		3)
			dividir
		;;
		4)
			multiplicar
		;;

		*)
			echo "La opción escogida no es válida"
		;;
	esac
}

## Función para leer dos valores introducidos por el usuario
function recogerValores(){
	read -p "Introduzca el primer valor: " numero1
	read -p "Introduzca el segundo valor: " numero2

## Función para sumar dos valores dados
function sumar(){
	recogerValores
	suma=$((numero1+numero2))
	echo "$numero1 + $numero2 = $suma"
}

## Función para restar dos valores dados
function restar(){
	recogerValores
	resta=$((numero1-numero2))
	echo "$numero1 - $numero2 = $resta"
}

## Función para dividir dos valores dados
function dividir(){
	recogerValores
	dividir=$((numero1/numero2))
	echo "$numero1 / $numero2 = $dividir"
}

## Función para dividir dos valores dados
function multiplicar(){
	recogerValores
	multiplicar=$((numero1*numero2))
	echo "$numero1 x $numero2 = $multiplicar"
}

#Llamada a la función para comprobar la operación que se va a realizar
usuarioElige
