# !/bin/bash

num=10

# comparasion operators (numbers)
# -eq = equal "="
# -ne = no equal "!="
# -gt = greater than ">"
# -ge = greater than or equal to ">="
# -lt = less than "<"
# -le = less than or equal to "<="
# para usar los simbolos de un operador se debe colocar entre paretesis dobles "(( $a > $b  ))"

# comparasion operators (text)
# = : equal to 
# == : equal to (this operator use with double brackets)
# != : is not equal
# -z : is null
# -n : is not null

# compound comparison
# -a : return true if both expressions are true
# -o : return true if one the expressions is true



if [ $num -lt 9 ]
then
	echo 'si'
else
	echo 'no'
fi
