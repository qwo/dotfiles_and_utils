
SRC=$1
DST=$2 # stanley@syncho:/Code

alias run_rsync='rsync -azP --exclude ".*/" --exclude ".*" --exclude "tmp/" .*/  $DST'
run_rsync; fswatch -o . | while read f; do run_rsync; done
