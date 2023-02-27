#! /bin/bash

# download newpipe- and termux apk's


main(){

	qsignal="open"
	while [[ "$qsignal" != "close" ]]
	do
		echo ":: Download which apk?: "
		echo ">> Newpipe[1] | Termux[2] | Quit[[q]"

		read opt

		case $opt in 

			1) dlto $opt ;;
			2) dlto $opt ;;
			3) dlto $opt ;;
			q) echo "<-- Exiting"
			   qsignal="close"
			   ;;
			*) echo "X> No such option found: ${opt}"
		esac
	done
}

dlto() {

	cd /data/data/com.termux/files/home/storage/shared/Download/
	
	if [[ "$opt" -eq 1 ]]
	then
		#wget https://github.com/TeamNewPipe/releases/download/v0.24.1/NewPipe_v0.24.1.apk

		echo "${applist[0]}"
		echo "!> done"
	elif [[ "$opt" -eq 2 ]]
	then
		#wget app[1]
		echo "!> done"

	elif [[ "$opt" -eq 3 ]]
	then
		#wget
		echo "!> done"
	fi

}

main
