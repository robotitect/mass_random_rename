#!/bin/bash
LETTERS=(1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

for file in *.txt
do
	name=""
	for i in `seq 1 32`;
	do
		var=$(( $RANDOM % ${#LETTERS[@]} + 1 ))
		# echo $var
		new=${LETTERS[$var]}
		name=$name$new
		echo $name
	done
	mv $file ${name.txt}
done
