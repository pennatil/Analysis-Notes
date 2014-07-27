#!/bin/bash

#Check if in correct Folder
{
	cd "../Tex/MAINs"
} || {
	echo -e "\n\n#### CALL ME FROM THE SCRIPTS DIRECTORY ####\n\n" && exit 1
}


function ask { # Got it from: https://gist.github.com/davejamesmiller/1965569
    while true; do
 
        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi
 
        # Ask the question
        read -p "$1 [$prompt] " REPLY
 
        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi
 
        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac
 
    done
}

function install_gnu {
	echo -e ""
	if ask "===> GNUPLOT is required, but not found. Install it?" Y; then
		echo -e "Installing gnuplot, might take a while..."
   		brew install gnuplot
   	else
   		echo -e >&2 "\n\n ### ERROR ###\n\ngnuplot is required, but it is not installed. Please read the README for instructions. Aborting.\n\n"; exit 1; 
	fi
}

#Check if pdflatex (LaTex) is installed
if command -v pdflatex >/dev/null 2>&1; then
	echo "LaTex: Found"
else
	echo -e >&2 "\n\n ### ERROR ###\n\npdflatex (LaTex) is required, but it is not installed. Please read the README for instructions. Aborting.\n\n"; exit 1; 
fi

#Check if gnuplot is installed
if command -v gnuplot >/dev/null 2>&1; then
	HASGNUPLOT=true
	echo "gnuplot: Found"
else
	HASGNUPLOT=false
	echo "gnuplot: Missing"
fi


# Check if brew is installed (to install gnuplot on OSX)
if command -v brew >/dev/null 2>&1; then
	HASBREW=true
	echo "brew: Found"
else
	HASBREW=false
	echo "brew: Missing"
fi


#Gnuplot Logic
if [ "$HASGNUPLOT" = false ]; then
	if [ "$HASBREW" = true ]; then
		install_gnu 
	else 
		echo -e >&2 "\n\n ### ERROR ###\n\ngnuplot is required, but it is not installed. Please read the README for instructions. Aborting.\n\n"; exit 1; 
	fi
fi


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
