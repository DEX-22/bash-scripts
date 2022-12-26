# !/bin/bash

countProjects=$(printenv | grep -c "EXAMPLE" )


if 
	[ $countProjects == 0 ] 
then 
	alertCount=$(zenity --entry --title="Cuantos proyectos tiene?")
	
	if 
		[ $alertCount != 0 ]
	then

		for ((  i = 1 ; i <= $alertCount ; i++)) 
		do
			projectName=$(zenity --entry --entry-text="~/Documents/" --title="Ingrese la ruta del proyecto $i")
			
			export "EXAMPLE_$i"="${projectName}" 
			# echo "$projectName $i"
		done
	fi
	#echo 'eeee'
	#count=$alertCount
	#echo "AAAA $alertCount" 
else 
	projectsList=$(printenv | grep "EXAMPLE")
	echo ${projectsList}
fi

#if 
#	[ ${countProjects} > 0 ]
#then
#	projects=$(printenv | grep "EXAMPLE")
#	echo $countProjects
#fi

#echo "no hay data" #$countProjects

