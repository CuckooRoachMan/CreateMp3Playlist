#!/usr/bin/bash
for dir in /Path/to/Music/*/*/
do
    for file in "${dir}"/* ; 	    
    do
	echo "${file}"
	if  [ ${file: -4} == ".mp3" ]
	then 
	    realpath "$file" >> playlist.txt;
	    echo "$file";
	fi   
    done
done    

# CreateMp3Playlist
