#! /bin/bash

# download apk's of your chois 
# through download links

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

# cd to Download directory in shared directory
# to download apk to directory that is also accesabel
# with gui file mannager.

dlto() {

	cd /data/data/com.termux/files/home/storage/shared/Download/
	
	if [[ "$opt" -eq 1 ]]
	then
		wget $applist[0]
		echo "!> done"
	elif [[ "$opt" -eq 2 ]]
	then
		wget $applist[1]
		echo "!> done"

	elif [[ "$opt" -eq 3 ]]
	then
		wget $applist[2]
		echo "!> done"
	fi

}

# add urls in arry separated by a space 
# and singel quats around urls.

applist=(
	'https://github.com/TeamNewPipe/releases/download/v0.24.1/NewPipe_v0.24.1.apk' 
	'termux'
)



main
