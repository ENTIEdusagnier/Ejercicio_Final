#!/bin/bash

echo "------------------"
echo "------------------"
echo "    Bienvenido    "
echo "------------------"
echo "------------------"
echo "Al script final" | cowsay
echo ""
echo -e "\033[0;31mCreated by:"
echo -e "   @edusagnier\033[0m"

read -p "Introduce tu nombre: " NAME

echo "Hola $NAME que tal estás?"
echo ""
read -p "Cual és tu edad $NAME? " AGE

if [ $AGE -lt 18 ];then
	echo "Eres menor de edad. Vuelve cuando tengas 18 <3"
	exit 0
fi

echo "Eres mayor de edad"


CORRECTO=0
while [ $CORRECTO == 0 ]
do
	read -p "Introduce 6 numeros separados (ej: 1 2 3 ...): " NUMBERS

	COUNT=0
	for num in $NUMBERS; do
	((COUNT++))
	done
	
	if [ $COUNT != 6 ];then
		echo "Numeros no introducidos correctamente"
	else

		NUM1=`echo "$NUMBERS" | awk {'print $1'}`
		NUM2=`echo "$NUMBERS" | awk {'print $2'}`
		NUM3=`echo "$NUMBERS" | awk {'print $3'}`
		NUM4=`echo "$NUMBERS" | awk {'print $4'}`
		NUM5=`echo "$NUMBERS" | awk {'print $5'}`
		NUM6=`echo "$NUMBERS" | awk {'print $6'}`
	
		CONTADOR=0
		for num in $NUM1 $NUM2 $NUM3 $NUM4 $NUM5 $NUM6; do

			if [[ $num -gt 0 && $num -le 9 ]];then
				# echo "$num OK!" #Verificacion de funcinamiento
				((CONTADOR++))
			else
				echo "$num KO!"
			fi
		done
		
		
		if [ $CONTADOR != 6 ];then
			CORRECTO=0
			echo "No has introducido bien los datos"
			echo "" #Me molesta que no haya espacio.
		else
			# echo "$NUM1    $NUM2    $NUM3    $NUM4    $NUM5    $NUM6" #Verificacion de funcionamiento
			echo "Num correctamente introduciodos"
			CORRECTO=1
		fi
	fi

done
