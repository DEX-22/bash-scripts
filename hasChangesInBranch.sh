# !/bin/bash

dato='git pull'

currentBranch="$(git branch --show-current)"


	if
		[ "$currentBranch" != $1 ]
	then

		hasChanges=$(git switch $1 | grep -o 'git pull')

		cambios="${hasChanges}"

		git switch "$currentBranch"
	else

		hasChanges=$(git status | grep -o 'git pull')

		cambios="${hasChanges}"

	fi

	if
		[ "$cambios" == "$dato" ]
	then
		zenity --notification --text="Nuevos cambios en $1"
	else
		zenity --notification --text="No hay cambios en $1"
	fi



