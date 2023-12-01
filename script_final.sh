#!/bin/bash

cd /home/enti/Ejercicio_Final/

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

			if [[ $num -gt -1 && $num -le 999999 && $num =~ ^[0-9]+ ]];then
				# echo "$num OK!" #Verificacion de funcinamiento
				((CONTADOR++))
			else
				echo -e "\033[0;31m$num KO!\033[0m"
			fi
		done
		
		
		if [ $CONTADOR != 6 ];then
			CORRECTO=0
			echo -e "\033[0;31mNo has introducido bien los datos\033[0m"
			echo "" #Me molesta que no haya espacio.
		else
			# echo "$NUM1    $NUM2    $NUM3    $NUM4    $NUM5    $NUM6" #Verificacion de funcionamiento
			echo -e "\033[0;33mNum correctamente introduciodos\033[0m"
			CORRECTO=1
		fi
	fi

done

for nums in $NUM1 $NUM2 $NUM3 $NUM4 $NUM5 $NUM6; do
	echo "$nums" >> ./archivo.txt
done

sort -nr archivo.txt | head -n 3 > ./numero_mayor.txt

cat numero_mayor.txt

BIG=`cat numero_mayor.txt | head -n 1`
echo -e "El numero mas grande era el: \033[0;34m$BIG"

rm archivo.txt

