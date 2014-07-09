#!/bin/bash
{
	cd "../Tex/MAINs"
} || {
	echo -e "\n\n#### CALL ME FROM THE SCRIPTS DIRECTORY ####\n\n" && exit 1
}
for i in {1..3}
do
   pdflatex --synctex=-1 --interaction nonstopmode --shell-escape --file-line-error mainMult.tex
done
rm -f *.out *.log *.aux *.synctex *.x.gnuplot *.x.table

#Activate them individually once a certain file is final!
mkdir -p "../../PDF/Final Documents"
# cp mainMult1.pdf "../../PDF/Final Documents/Kapitel 1 - Logik und Unterlagen - Analysis I.pdf"
# cp mainMult2.pdf "../../PDF/Final Documents/Kapitel 2 - Reelle Zahlen, Euklidische Raeume und Komplexe Zahlen - Analysis I.pdf"
# cp mainMult3.pdf "../../PDF/Final Documents/Kapitel 3 - Folgen und Reihen (Der Begriff des Limes) - Analysis I.pdf"
# cp mainMult4.pdf "../../PDF/Final Documents/Kapitel 4 - Stetigkeit - Analysis I.pdf"
# cp mainMult5.pdf "../../PDF/Final Documents/Kapitel 5 - Differentialrechnung auf R - Analysis I.pdf"
cp mainMult6.pdf "../../PDF/Final Documents/Kapitel 6 - Integration - Analysis II.pdf"
# cp mainMult7.pdf "../../PDF/Final Documents/Kapitel 7 - Gewoehnliche Differenzialgleichungen - Analysis II.pdf"
# cp mainMult8.pdf "../../PDF/Final Documents/Kapitel 8 - Differentialrechnung in R^n - Analysis II.pdf"
# cp mainMult9.pdf "../../PDF/Final Documents/Kapitel 9 - Integration in R^n - Analysis II.pdf"


mkdir -p "../../PDF/Work in Progress"
mv mainMult1.pdf "../../PDF/Work in Progress/Kapitel 1 - Logik und Unterlagen - Analysis I.pdf"
mv mainMult2.pdf "../../PDF/Work in Progress/Kapitel 2 - Reelle Zahlen, Euklidische Raeume und Komplexe Zahlen - Analysis I.pdf"
mv mainMult3.pdf "../../PDF/Work in Progress/Kapitel 3 - Folgen und Reihen (Der Begriff des  Limes) - Analysis I.pdf"
mv mainMult4.pdf "../../PDF/Work in Progress/Kapitel 4 - Stetigkeit - Analysis I.pdf"
mv mainMult5.pdf "../../PDF/Work in Progress/Kapitel 5 - Differentialrechnung auf R - Analysis I.pdf"
mv mainMult6.pdf "../../PDF/Work in Progress/Kapitel 6 - Integration - Analysis II.pdf"
mv mainMult7.pdf "../../PDF/Work in Progress/Kapitel 7 - Gewoehnliche Differenzialgleichungen - Analysis II.pdf"
mv mainMult8.pdf "../../PDF/Work in Progress/Kapitel 8 - Differentialrechnung in R^n - Analysis II.pdf"
mv mainMult9.pdf "../../PDF/Work in Progress/Kapitel 9 - Integration in R^n - Analysis II.pdf"



{ # your 'try' block
    growlnotify "Finished Generating Chapter Files"  -m "They can be found in the PDF folder"
} || {
	echo -e "\n\n#### FINISHED GENERATING CHAPTER FILES, CAN BE FOUND IN THE PDF FOLDER ####\n\n"
}
