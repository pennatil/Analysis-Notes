#!/bin/bash
cd "../Tex/MAINs"
for i in {1..3}
do
   pdflatex --synctex=-1 --interaction nonstopmode --shell-escape --file-line-error main.tex
done

rm -f *.out *.log *.aux *.toc *.synctex *.x.gnuplot *.x.table

#Activate these lines once the document is final!
# mkdir -p "../Final Documents"
# cp main.pdf "../Final\ Documents/Notizien - Analysis I&II.pdf"


mkdir -p "../../PDF/Work in Progress"
mv main.pdf "../../PDF/Work in Progress/Notizien - Analysis I&II.pdf"
{ # your 'try' block
    growlnotify "Finished Generating Main"  -m "Can be found in the Output folder"
} || {
	echo -e "\n\n#### FINISHED GENERATING MAIN, CAN BE FOUND IN THE OUTPUT FOLDER ####\n\n"
}


