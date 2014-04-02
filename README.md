Analysis I/II Notes
===================
This repo contains all the handwritten notes from Professor Imamoglu's Analysis I/II class for CS at ETHZ. 


Getting the material
====================

In order to get the material, there are two ways:

* Get a PDF file, containing all of the notes. This version might not be as up to date as the source files, but it is usually corrected and checked. Use this option of you are not familiar with LaTex or GitHub
  1. Download the .zip archive [here](https://github.com/pennatil/Analysis-Notes/archive/master.zip)
  2. Unzip it, you will find a folder named "Notes", open it
  3. Find a folder named "Output"
  4. Get the files you need
* Typeset (Build) it yourself from source. This is in order to have the latest version available (bleeding edge)(WARNING: MIGHT CONTAIN ERRORS IN THE TEXT). Take a look at the [Building](#Building) section

Contributing
============

There are essentially two ways of contributing to the notes:

1. Correcting mistakes you find in the notes
  * If you have no experience with LaTex or GitHub:
    1. Make sure you have a GitHub account, otherwise create one. Please use the same name as your ETHZ account, makes my life much easier if I have to contact you.
	2. On the right side of this page, click on the "Issues" tab
	3. Check if no one else has posted the same Issue. If no one has, open a new issue, stating:
	  * Chapter + Page Number
	  * Issue found, plus the eventual correction(s)
	4. Send the Issue, I will probably just close the Issue and send you a message or email once I have corrected the problem.
  * If you are familiar with Latex and GitHub:
	1. Fork the repo. Help [here](https://help.github.com/articles/fork-a-repo)
	2. Make the changes, and commit them to your forked repo. Make sure to add detailed comments explaining what you changed, makes my life a lot easier when merging!
	3. Once you are done, request a Merge. Help [here](https://help.github.com/articles/using-pull-requests)		
2. Typing up what's left of the notes
  * Only for people familiar with LaTex and GitHub. In this case, <a href="mailto:pennatil@student.ethz.ch">contact me</a>


Building
========
This is only recommended to people with experience with LaTex, since the files might still contain bugs and errors that have to be ironed out. I will not answer emails asking for help if the files do not build! If you are not sure, just use the PDF inside the .zip archive (Take a look at [Getting the material](#Getting the material)).

1. Make sure you have a working Tex distribution installed on your system. If you don't:
  * Mac OS: [MacteX](http://tug.org/mactex/)
  * Windows: [MikTeX](http://miktex.org/download) or [TexLive](https://www.tug.org/texlive/acquire-netinstall.html) (Recommended)
  * Linux: [TexLive](https://www.tug.org/texlive/quickinstall.html)
2. Download the master Branch [here](https://github.com/pennatil/Analysis-Notes/archive/master.zip)
  * If you want to use a program with a GUI:
	1. Navigate in the folder, and open "main.tex" using TexWorks (Right-click->open with...)
	2. On the top left, select "pdfLaTex" from the dropdown menu
	3. Click on the green arrow, this will start the building process. Repeat this step at least 2 times!!
	4. Navigate to the Notes folder, you will find a PDF file named "main.pdf". Move it and rename it wherever you like.
  * If you want to use the terminal (Linux and Mac only):
	1. <code>cd path/to/MAINs/folder/</code> (e.g. <code>cd /Users/Waldo/Desktop/Notes/MAINs/</code>)
	2. There is a script takes care of building the files for you, as well as cleaning up. 
		* If it is the first time that you run this script, type <code>sudo chmod 755 BuildAll.sh</code> (grant permission to run)
		* Afterwards, <code>./BuildAll.sh</code>
		* You will find a folder called "Output" inside the Notes folder, with the output file.

