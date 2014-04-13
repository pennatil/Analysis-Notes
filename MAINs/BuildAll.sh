#!/bin/sh
# My first Script

# echo "Hello World!"
# cd '/Users/Lucas/Desktop/Notes/MAINs/'
# pdflatex --shell-escape '/Users/Lucas/Desktop/Notes/MAINs/mainMult.tex'

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$
SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"


cd "../"
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
BASEDIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"


cd "$BASEDIR/MAINs/"
for i in {1..3}
do
   pdflatex main.tex
done


rm -f *.out *.log *.aux *.toc

mkdir -p "$BASEDIR/Output"





mv main.pdf "$BASEDIR/Output/Notizien - Analysis I&II.pdf"

{ # your 'try' block
    growlnotify "Finished Generating Main"  -m "Can be found in the Output folder"
} || {
	echo "#### FINISHED GENERATING MAIN, CAN BE FOUND IN THE OUTPUT FOLDER ####"
}
