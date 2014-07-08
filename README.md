Analysis I/II Notes
===================
If you're just here for the PDF, [here](https://github.com/pennatil/Analysis-Notes/raw/master/PDF/Work%20in%20Progress/Notizen%20-%20Analysis%20I%26II.pdf) you go. Be advised, however, that the PDF is constantly changing. It is not finished yet, and is likely to contain many mistakes. If you see anything fishy, please file an issue.

This repo contains all the handwritten notes from Professor Imamoglu's Analysis I/II class for CS at ETHZ. Although this page should clarify most of your doubts, you can <a href="mailto:pennatil@student.ethz.ch">email me</a> and I will try to help you. Please avoid questions regarding LaTex (installation, usage, can't compile) as the sections below are pretty self explanatory.

This repository will always contain the latest files (PDFs as well), which will be updated when progress is made. As of right now, i do NOT recommend you print out things in a final form (booklet, color,...) since they might change from one day to another. Once I am done, you will receive an email with the final files.

If you wish to help (highly appreciated), there are a few things left to complete (take a look at the [Status](#Status) section). For more details on how, take a look at the [Contributing](#Contributing) section below.

<a name="Status"></a>
Status
======
| Chapter |  Typed up?  | Finished drawings? | Spellchecked? |      Math checked?      | Done? |
|:-------:|:-----------:|:------------------:|:-------------:|:-----------------------:|:-----:|
|    1    |     Yes     |         Yes        |       Yes     | Waiting for corrections |   No  |
|    2    |     Yes (*)  |         Yes        |       Yes      | Waiting for corrections |   No  |
|    3    | Yes 		 |          Yes       |       Yes      |           Waiting for corrections           |   No  |
|    4    | Yes         |     		Yes       |       Yes       |Waiting for corrections           |   No  |
|    5    |      Yes    |          Yes         |       Yes       |          Waiting for corrections           |   No  |
|    6    |     Yes     |         Yes        |       Yes      |           Yes           |   No  |
|    7    |     Yes     |         Yes        |       Yes      | Waiting for corrections |   No  |
|    8    |     Yes     |          Yes (*)         |       Yes      | Waiting for corrections |   No  |
|    9    | Yes 		 |          Yes        |       Yes       |            Waiting for corrections            |   No  |

(*) Might still be missing some content, which will be added once the corrections are made.

<a name="Getting the material"></a>
Getting the material
====================

In order to get the material, there are two ways:

* Get a .zip file, containing all of the notes, as well as the source files. This package contains Final chapters, as well as those that are in progress.
  1. Download the .zip archive [here](https://github.com/pennatil/Analysis-Notes/archive/master.zip)
  2. Unzip it, you will find a folder named "Analysis-Notes-master", open it
  3. Open the "PDF" Folder
  4. There are two folders you have to pay attention to:
      * Final chapters: Those files that are complete and final, are saved here.
	  * Work in Progress: Everything is included in here, as well as incomplete files.
  5. Get the files you need
* Typeset (Build) it yourself from source. Take a look at the [Building](#Building) section

New PDFs are generated on an (almost) daily basis, so if you are not familiar with LaTex, just get the files from the "PDF" folder.

UPDATE: As of 21.05.2014 new PDFs are generated on a daily basis (at around 2:30 AM), so this page always contains the latest ones.

<a name="Contributing"></a>
Contributing
============

Since these documents are still a very early version, they might contain a few (if not more) mistakes. Also, not everything has been yet typed up, as well as corrected. Even if you have no experience with LaTex, you can correct spelling mistakes or else. You can help in two ways:

1. Correct mistakes you find in the notes (spelling, math, ...)
    * If you have no experience with LaTex or GitHub:
    	1. Make sure you have a GitHub account, otherwise create one [here](https://github.com/join). Please use the same name as your ETHZ account, makes my life much easier if I have to contact you.
		2. On the right side of this page, click on the ["Issues"](https://github.com/pennatil/Analysis-Notes/issues) tab
		3. Check if no one else has posted the same Issue. If no one has, open a new issue, stating:
	 		 * Title: Chapter + Page Number
	 		 * Message: Issue found, plus the eventual correction(s)
	 		 * Tag: Add a tag that best classifies the issue
	 		 * If you are not sure, take a look at the sample [here](https://github.com/pennatil/Analysis-Notes/issues/4)
		4. Post the issue, it will be corrected ASAP.
	* If you are familiar with Latex and GitHub:
		1. First, check if someone has posted the same issue. If yes, mention it in your merge request (point 4.)
		2. Fork the repo. Help [here](https://help.github.com/articles/fork-a-repo)
		3. Make the changes, and commit them to your forked repo. Make sure to add detailed comments explaining what you changed, makes my life a lot easier when merging!
		4. Once you are done, request a Merge. Help [here](https://help.github.com/articles/using-pull-requests)
2. Type up what's left of the notes.
	* Only for people familiar with LaTex and GitHub. Please, do not start typing away, <a href="mailto:pennatil@student.ethz.ch?subject=I%20want%20to%20help!">email me</a> first so that we can avoid two people doing the same work.

I will not take into consideration emails containing corrections. Please use the "Issues" tab so to keep track of every change.


<a name="Building"></a>
Building
========
This is only recommended to people with experience with LaTex, since the files might still contain bugs and errors that have to be ironed out. I will not answer emails asking for help if the files do not build! If you are not sure, just use the PDFs inside the .zip archive (Take a look at [Getting the material](#Getting the material)). If you are installing LaTex from scratch, make sure you install the full release with all the packages!

1. First of all, make sure you have the following programs installed:
	* Latex
		* Mac OS: [MacteX](http://tug.org/mactex/)
		* Windows: [TexLive](https://www.tug.org/texlive/acquire-netinstall.html)
		* Linux: [TexLive](https://www.tug.org/texlive/quickinstall.html)
	* Gnuplot
		* Mac OS: [Tutorial](http://www.maclife.com/article/columns/terminal_101_graphing_gnuplot). Take a look at the "Installing gnuplot" section.
		* Windows: [Setup file](http://sourceforge.net/projects/gnuplot/files/latest/download?source=files)
		* Linux: Depends on your distro, a quick google search should help
2. Download the master Branch [here](https://github.com/pennatil/Analysis-Notes/archive/master.zip) and unzip it. 
3. Build the files:
	* Using a program with a GUI:
		2. Navigate to the "Tex/MAINs" folder, and open "main.tex" using TexWorks (Right-click->open with... or similar depending on your OS)
		3. On the top left, select "pdfLaTex" from the dropdown menu
		4. Click on the green arrow, this will start the building process. Repeat this step at least 2 times!!
		5. You should now have a "main.pdf" file in your "MAINs" Folder.
		6. You can delete the other files, like the aux and log files. 
	* Using the terminal: 
	There are 2 different files located in the "Scripts" folder. <code>BuildAll.sh</code>: This builds 1 file with all the notes, while <code>BuildChapterByChapter.sh</code>: Builds a file for each chapter. In the following instructions, replace <code>scriptName.sh</code> with the one you choose:
		* Mac and Linux:
			1. <code>cd path/to/Scripts/folder/</code> (i.e. <code>cd /Users/Waldo/Desktop/Analysis-Notes-master/Scripts/</code>)
			2. If it is the first time that you run this script, type <code>sudo chmod 755 scriptnName.sh</code>, and hit enter.
			4. Afterwards, type <code>./scriptName.sh</code> and press enter.
			5. Wait until the process is done.
			6. You will find a folder called "PDF" inside the Notes folder, with the output file(s).
		* Windows: Although this method is in no way supported, it should work on most systems. Just make sure you have TexLive installed and not MikTeX!
			1. If you haven't already, install Git from [here](http://msysgit.github.io/)
			2. Once done, open the "Git Bash" program
			3. <code>cd path/to/Scripts/folder/</code> (i.e. <code>/c/Users/Waldo/Desktop/Analysis-Notes-master/Scripts</code>)
			4. Type <code>./scriptName.sh</code>
			5. Wait until the process is done
			6. You will find a folder called "PDF" inside the Notes folder, with the output file(s).






Disclaimer
==========
The following documents, as well as any other file contained in this repository (like scripts, etc.) are given as is, meaning I take NO RESPONSIBILITY if something happens to your computer, or if the information contained in the documents is not accurate.
