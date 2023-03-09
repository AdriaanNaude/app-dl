#! /bin/bash

# download apk's of your chois 
# through download links

main(){

	qsignal="open"
	while [[ "$qsignal" != "close" ]]
	do
		echo ":: Download which apk?: "
		#echo ">> Newpipe[1] | Termux[2] | Quit[[q]"
		echo ">>[0,1,2,3...] | Quit[[q]"
		sleep 1
		

		for i in ${applist[@]}
		do		
			echo ">> ${i}"
		done

		read opt
		
		if [[ $opt == "q" ]]
		then
			echo "<-- Exiting"
			qsignal="close"
		else
			dlto $opt
		fi
	done
}

# cd to Download directory in shared directory
# to download apk to directory that is also accesabel
# with gui file mannager.

dlto() {

	cd /data/data/com.termux/files/home/storage/shared/Download/
	
	wget $applist[$opt]
}

# add urls in arry separated by a space 
# and singel qouts around urls.

applist=(
	'https://github.com/TeamNewPipe/releases/download/v0.24.1/NewPipe_v0.24.1.apk'
	'https://github.com/Termux/releases/download/v0.11.0.8/Termux_v0.11.0.8.apk'
	'https://github.com/Termux/releases/download/v0.11.0.8/Termux_v0.11.0.8.apk'

)

main
