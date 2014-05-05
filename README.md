Analysis I/II Notes
===================
This repo contains all the handwritten notes from Professor Imamoglu's Analysis I/II class for CS at ETHZ. Although this page should clarify most of your doubts, you can <a href="mailto:pennatil@student.ethz.ch">email me</a> and I will try to help you. Please avoid questions regarding LaTex (installation, usage, can't compile) as the sections below are pretty self explanatory. 

If you wish to help, there are a few things left to complete. Also, take a look at the [Contributing](#Contributing) section below.

TODO:
* Spell check chapters that are done
* Finish chapters 3 through 5
* Continue new chapters as new material comes in
* Type up the Tipps from both semester (find source material)
* Be done by the end of the current Semester

<a name="Getting the material"></a>
Getting the material
====================

In order to get the material, there are two ways:

* Get a .zip file, containing all of the notes, as well as the source files. This package contains Final chapters, as well as those that are in progress. 
  1. Download the .zip archive [here](https://github.com/pennatil/Analysis-Notes/archive/master.zip)
  2. Unzip it, you will find a folder named "Notes", open it
  3. There are two folders you have to pay attention to:
  	* Final chapters: Those files that are complete and final, are saved here.  
	* Output: Everything is included in here, as well as incomplete files. 
  4. Get the files you need
* Typeset (Build) it yourself from source. Take a look at the [Building](#Building) section

New PDFs are generated on an (almost) daily basis, so if you are not familiar with LaTex, just get the files from the "Output" folder.

<a name="Contributing"></a>
Contributing
============

Since these documents are still a very early version, they might contain a few (if not more) mistakes. Also, not everything has been yet typed up. You can help in two ways: 

1. Correct mistakes you find in the notes
    * If you have no experience with LaTex or GitHub:
    	1. Make sure you have a GitHub account, otherwise create one [here](https://github.com/join). Please use the same name as your ETHZ account, makes my life much easier if I have to contact you.
		2. On the right side of this page, click on the ["Issues"](https://github.com/pennatil/Analysis-Notes/issues) tab
		3. Check if no one else has posted the same Issue. If no one has, open a new issue, stating:
	 		 * Title: Chapter + Page Number
	 		 * Message: Issue found, plus the eventual correction(s)
	 		 * Tag: Add a tag that best classifies the issue
	 		 * If you are not sure, take a look at the sample here [here](https://github.com/pennatil/Analysis-Notes/issues/4)
		4. Post the issue, it will be corrected ASAP.
	* If you are familiar with Latex and GitHub:
		1. Fork the repo. Help [here](https://help.github.com/articles/fork-a-repo)
		2. Make the changes, and commit them to your forked repo. Make sure to add detailed comments explaining what you changed, makes my life a lot easier when merging!
		3. Once you are done, request a Merge. Help [here](https://help.github.com/articles/using-pull-requests)
2. Type up what's left of the notes. 
	* Only for people familiar with LaTex and GitHub. Please, do not start typing away, <a href="mailto:pennatil@student.ethz.ch?subject=I%20want%20to%20help!">email me</a> first so that we can avoid two people doing the same work.

I will not take into consideration emails containing corrections. Please use the "Issues" tab so to keep track of every change.

<a name="Building"></a>
Building
========
This is only recommended to people with experience with LaTex, since the files might still contain bugs and errors that have to be ironed out. I will not answer emails asking for help if the files do not build! If you are not sure, just use the PDFs inside the .zip archive (Take a look at [Getting the material](#Getting the material)). If you are installing LaTex from scratch, make sure you install the full release with all the packages!

1. Make sure you have a working Tex distribution installed on your system. If you don't:
	* Mac OS: [MacteX](http://tug.org/mactex/)
    * Windows: [MikTeX](http://miktex.org/download) or [TexLive](https://www.tug.org/texlive/acquire-netinstall.html) (Recommended)
    * Linux: [TexLive](https://www.tug.org/texlive/quickinstall.html) (Ubuntu: <code>sudo apt-get install texlive-full</code>)
2. Download the master Branch [here](https://github.com/pennatil/Analysis-Notes/archive/master.zip)
3. Generate the files
	* If you want to use a program with a GUI:
	  1. Navigate to the "MAINs" folder, and open "main.tex" using TexWorks (Right-click->open with...)
	  2. On the top left, select "pdfLaTex" from the dropdown menu
	  3. Click on the green arrow, this will start the building process. Repeat this step at least 2 times!!
	  4. You should now have a "main.pdf" file in your "MAINs" Folder.
    * If you want to use the terminal (Linux and Mac only):
	    1. <code>cd path/to/Scripts/folder/</code> (e.g. <code>cd /Users/Waldo/Desktop/Notes/Scripts/</code>)
   	    2. There are 2 scripts that take care of building the files, and cleaning up. <code>BuildAll.sh</code> builds 1 pdf with all the notes, while <code>BuildChapterByChapter.sh</code> builds a file for each chapter. choose which one you want to use.
		3. If it is the first time that you run this script, type <code>sudo chmod 755 nameOfScript.sh</code> (Where <code>nameOfScript.sh</code> is either <code>BuildAll.sh</code> or <code>BuildChapterByChapter.sh</code>. This command grants permission to the script to run)
		4. Afterwards, type <code>./nameOfScript.sh</code> and press enter.
		5. Wait until the process is done.
		6. You will find a folder called "Output" inside the Notes folder, with the output file(s).
		
Disclaimer
==========
The following documents, as well as any other file contained in this repository (like scripts, etc.) are given as is, meaning I take NO RESPONSIBILITY if something happens to your computer, or if the information contained in the documents is not accurate. 

