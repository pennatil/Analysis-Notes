#!/bin/bash
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
   pdflatex --shell-escape mainMult.tex
done


rm -f *.out *.log *.aux

mkdir -p "$BASEDIR/Output"





mv mainMult1.pdf "$BASEDIR/Output/Kapitel 1 - Logik und Unterlagen - Analysis I.pdf"
mv mainMult2.pdf "$BASEDIR/Output/Kapitel 2 - Reele Zahlen, Euklidische Räume und Komplexe Zahlen - Analysis I.pdf"
mv mainMult3.pdf "$BASEDIR/Output/Kapitel 3 - Folgen und Reihen (Der Limes Begriff) - Analysis I.pdf"
mv mainMult4.pdf "$BASEDIR/Output/Kapitel 4 - Chapter 4 - Analysis I.pdf"
mv mainMult5.pdf "$BASEDIR/Output/Kapitel 5 - Chapter 5 - Analysis I.pdf"
mv mainMult6.pdf "$BASEDIR/Output/Kapitel 6 - Integration - Analysis II.pdf"
mv mainMult7.pdf "$BASEDIR/Output/Kapitel 7 - Gewöhnliche Differenzialgleichungen - Analysis II.pdf"

