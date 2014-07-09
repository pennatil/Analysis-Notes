#!/bin/bash
#Check if pdflatex is installed
{
	command -v pdflatex >/dev/null 2>&1
} || { 
	echo >&2 "pdflatex (LaTex) is required, but it is not installed. Please look on the README for instructions. Aborting."; exit 1; 
}
#Check if gnuplot is installed
{
	command -v gnuplot >/dev/null 2>&1
} || { 
	echo >&2 "gnuplot is required, but it is not installed. Please look on the README for instructions. Aborting."; exit 1; 
}
{
	cd "../Tex/MAINs" 
} || {
	echo -e "\n\n#### CALL ME FROM THE SCRIPTS DIRECTORY ####\n\n" && exit 1
}
for i in {1..3}
do
   pdflatex --synctex=-1 --interaction nonstopmode --shell-escape --file-line-error main.tex
done

rm -f *.out *.log *.aux *.toc *.synctex *.x.gnuplot *.x.table

#Activate these lines once the document is final!
# mkdir -p "../Final Documents"
# cp main.pdf "../Final\ Documents/Notizien - Analysis I&II.pdf"


mkdir -p "../../PDF/Work in Progress"
mv main.pdf "../../PDF/Work in Progress/Notizen - Analysis I&II.pdf"
{ # your 'try' block
    growlnotify "Finished Generating Main"  -m "Can be found in the PDF folder"
} || {
	echo -e "\n\n#### FINISHED GENERATING MAIN, CAN BE FOUND IN THE PDF FOLDER ####\n\n"
}


