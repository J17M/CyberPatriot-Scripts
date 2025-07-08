#!/bin/bash


echo "all media files found: "
locate *.mkv 
locate *.webm 
locate *.flv 
locate *.vob 
locate *.ogv 
locate *.drc 
locate *.gifv 
locate *.mng 
locate *.avi$ 
locate *.mov 
locate *.qt 
locate *.wmv 
locate *.yuv 
locate *.rm 
locate *.rmvb 
locate *.asf 
locate *.amv 
locate *.mp4$ 
locate *.m4v 
locate *.mp 
locate *.m?v 
locate *.svi 
locate *.3gp 
locate *.flv 
locate *.f4v 


echo "all audio files found: "
#audio files
locate *.3ga 
locate *.aac 
locate *.aiff 
locate *.amr 
locate *.ape 
locate *.arf 
locate *.asf 
locate *.asx 
locate *.cda 
locate *.dvf 
locate *.flac
locate *.gp4 
locate *.gp5 
locate *.gpx 
locate *.logic 
locate *.m4a 
locate *.m4b 
locate *.m4p 
locate *.midi 
locate *.mp3 
locate *.pcm 
locate *.rec 
locate *.snd 
locate *.sng 
locate *.uax 
locate *.wav 
locate *.wma 
locate *.wpl
locate *.zab



# directory to start the search 
start_directory="/"

# output text file
output_file="video_files.txt"

# Use find to locate video files and redirect the output to the text file
find "$start_directory" -type f \( -name "*.mkv" -o -name "*.webm" -o -name "*.flv" -o -name "*.vob" -o -name "*.ogv" -o -name "*.drc" -o -name "*.gifv" -o -name "*.mng" -o -name "*.avi" -o -name "*.mov" -o -name "*.qt" -o -name "*.wmv" -o -name "*.yuv" -o -name "*.rm" -o -name "*.rmvb" -o -name "*.asf" -o -name "*.amv" -o -name "*.mp4" -o -name "*.m4v" -o -name "*.mp" -o -name "*.m?v" -o -name "*.svi" -o -name "*.3gp" -o -name "*.flv" -o -name "*.f4v" \) > "$output_file"

echo "Video files located and paths saved to $output_file"


# directory to start the search 
starting="/"

# output text file
output="audio_files.txt"

# Use find to locate audio files and redirect the output to the text file
find "$starting" -type f \( -name "*.3ga" -o -name "*.aac" -o -name "*.aiff" -o -name "*.amr" -o -name "*.ape" -o -name "*.arf" -o -name "*.asf" -o -name "*.asx" -o -name "*.cda" -o -name "*.dvf" -o -name "*.flac" -o -name "*.gp4" -o -name "*.gp5" -o -name "*.gpx" -o -name "*.logic" -o -name "*.m4a" -o -name "*.m4b" -o -name "*.m4p" -o -name "*.midi" -o -name "*.mp3" -o -name "*.pcm" -o -name "*.rec" -o -name "*.snd" -o -name "*.sng" -o -name "*.uax" -o -name "*.wav" -o -name "*.wma" -o -name "*.wpl" -o -name "*.zab" \) > "$output"

echo "Audio files located and paths saved to $output"
