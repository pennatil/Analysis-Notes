#!/bin/bash

#Check if in correct Folder
{
	cd "../Tex/MAINs"
} || {
	echo -e "\n\n#### CALL ME FROM THE SCRIPTS DIRECTORY ####\n\n" && exit 1
}


#Check if pdflatex (LaTex) is installed
if command -v pdflatex >/dev/null 2>&1; then
	echo "LaTex: Found"
else
	echo -e >&2 "\n\n ### ERROR ###\n\npdflatex (LaTex) is required, but it is not installed. Please read the README for instructions. Aborting.\n\n"; exit 1; 
fi


for i in {1..3}
do
   pdflatex --synctex=-1 --interaction nonstopmode --shell-escape --file-line-error mainReview.tex
done
rm -f *.out *.log *.aux *.synctex *.x.gnuplot *.x.table


#Activate once the file is final!
#mkdir -p "../../PDF/Final Documents"
#cp mainReview.pdf "../../PDF/Final Documents/Review - Analysis II.pdf"

mkdir -p "../../PDF/Work in Progress"
mv mainReview.pdf "../../PDF/Work in Progress/Review - Analysis II.pdf"



{ # your 'try' block
    growlnotify "Finished Generating Review File"  -m "It can be found in the PDF folder"
} || {
	echo -e "\n\n#### FINISHED GENERATING REVIEW FILE, CAN BE FOUND IN THE PDF FOLDER ####\n\n"
}
