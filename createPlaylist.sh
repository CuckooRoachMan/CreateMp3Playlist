#!/usr/bin/bash
for dir in /run/media/jamz/DRAGON/Music/*/*/
do
    #echo "${dir}"
    #cd "${dir}"
    for file in "${dir}"/* ; 	    
    do
	echo "${file}"
	if  [ ${file: -4} == ".mp3" ]
	then 
	    realpath "$file" >> /home/jamz/playlist.txt;
	    echo "$file";
	fi   
    done
done    

# CreateMp3Playlist
