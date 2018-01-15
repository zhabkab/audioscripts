#!/bin/bash
# script to extract audio from videos downloaded from the web in the same folder and convert them to mp3 
# meant to be run from Cygwin with ffmpeg.exe in the same folder where it is run
find . -type f -name "*.mkv" -exec bash -c 'FILE="$1"; ./ffmpeg -i "${FILE}" -vn -c:a libmp3lame -b:a 320k -y "${FILE%.mkv}.mp3";' _ '{}' \;                  
find . -type f -name "*.mp4" -exec bash -c 'FILE="$1"; ./ffmpeg -i "${FILE}" -vn -c:a libmp3lame -b:a 320k -y "${FILE%.mp4}.mp3";' _ '{}' \; 
find . -type f -name "*.webm" -exec bash -c 'FILE="$1"; ./ffmpeg -i "${FILE}" -vn -c:a libmp3lame -b:a 320k -y "${FILE%.webm}.mp3";' _ '{}' \; 