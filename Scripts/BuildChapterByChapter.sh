#!/bin/bash
cd "../MAINs"
for i in {1..3}
do
   pdflatex --shell-escape mainMult.tex
done
rm -f *.out *.log *.aux
mkdir -p "../Output"
mv mainMult1.pdf "../Output/Kapitel 1 - Logik und Unterlagen - Analysis I.pdf"
mv mainMult2.pdf "../Output/Kapitel 2 - Reele Zahlen, Euklidische Raeume und Komplexe Zahlen - Analysis I.pdf"
mv mainMult3.pdf "../Output/Kapitel 3 - Folgen und Reihen (Der Limes Begriff) - Analysis I.pdf"
mv mainMult4.pdf "../Output/Kapitel 4 - Chapter 4 - Analysis I.pdf"
mv mainMult5.pdf "../Output/Kapitel 5 - Chapter 5 - Analysis I.pdf"
mv mainMult6.pdf "../Output/Kapitel 6 - Integration - Analysis II.pdf"
mv mainMult7.pdf "../Output/Kapitel 7 - Gewoehnliche Differenzialgleichungen - Analysis II.pdf"
mv mainMult8.pdf "../Output/Kapitel 8 - Differenzialrechnung in R^n - Analysis II.pdf"



{ # your 'try' block
    growlnotify "Finished Generating Chapter Files"  -m "They can be found in the Output folder"
} || {
	echo -e "\n\n#### FINISHED GENERATING CHAPTER FILES, CAN BE FOUND IN THE OUTPUT FOLDER ####\n\n"
}
