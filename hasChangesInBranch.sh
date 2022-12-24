# !/bin/bash

dato='git pull'

currentBranch=$(git branch --show-current)

hasChanges=$(git switch $1 | grep -o 'git pull')

cambios="${hasChanges}"

git switch "$currentBranch"

	if
		[ "$cambios" == "$dato" ] 
	then
		echo 'new cambios'
	else
		echo "no hay cambios"
	fi

#git switch "$currentBranch"




