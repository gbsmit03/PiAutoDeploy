#!/bin/bash

if [ "$1" = "help" ]
then
	echo "Command format."
    echo "PiAutoDeploy.sh SourceDirOrFile TargetDirORFile User Host [clean]"
	echo "use clean to clear target directory/file"
	exit 0;
fi

if [ "$5" = "clean" ]
then
    echo ""
	echo "Cleaning project on PI"
	ssh "$3"@"$4" rm -fr "$5"
	echo "Redeploy project to PI"
	echo ""
	scp -rp "$1" "$3"@"$4":"$2"
	echo ""
	echo ""
fi

if [ "$1" ] &&  [ "$2" ] && [ "$3" ] && [ "$4" ]
then
    echo ""
	echo "Start file watch.."
	when-changed "$1" -v -c scp -rp "$1" "$3"@"$4":"$2"
else
	echo "invaild args"
fi

echo "Thank you for using PiAutoDeploy please help make me better at https://github.com/gbsmit03/PiAutoDeploy."