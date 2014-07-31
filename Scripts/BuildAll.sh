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


