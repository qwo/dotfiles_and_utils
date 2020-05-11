# using ffmpeg convert a format to another format
# $1 = .m4a and $2 is the desired converted format
# ffmpeg must be installed 
for i in *.m4a ; do 
    ffmpeg -i "$i"  $(basename "${i/.m4a}").mp3 
done
