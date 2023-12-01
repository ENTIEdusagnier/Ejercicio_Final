#!/bin/bash

echo "------------------"
echo "------------------"
echo "    Bienvenido    "
echo "------------------"
echo "------------------"
echo "Al script final" | cowsay

read -p "Introduce tu nombre: " NAME

echo "Hola $NAME que tal estás?"
echo ""
read -p "Cual és tu edad $NAME? " AGE

if [ $AGE -lt 18 ];then
	echo "Eres menor de edad. Vuelve cuando tengas 18 <3"
	exit 0
fi

echo "Eres mayor de edad"

read -p "Introduce 6 numeros separados (ej: 1 2 3 ...): " NUMBERS

NUM_1=`echo "$NUMBERS" | awk {'print $1'}`
NUM_2=`echo "$NUMBERS" | awk {'print $2'}`
NUM_3=`echo "$NUMBERS" | awk {'print $3'}`
NUM_4=`echo "$NUMBERS" | awk {'print $4'}`
NUM_5=`echo "$NUMBERS" | awk {'print $5'}`
NUM_6=`echo "$NUMBERS" | awk {'print $6'}`

echo "$NUM_1  $NUM_2  $NUM_3  $NUM_4   $NUM_5   $NUM_6 "

#while 
