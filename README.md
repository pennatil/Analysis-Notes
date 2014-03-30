Analysis I/II Notes
===================
This repo contains all the handwritten notes from Professor Imamoglu's Analysis I/II class for CS at ETHZ. 

<a name="Getting the material"></a>
Getting the material
====================

In order to get the material, there are two ways:
<ul>
<li>Get a PDF file, containing all of the notes. This version might not be as up to date as the source files, but it is usually corrected and checked. Use this option of you are not familiar with LaTex or GitHub</li>
<ol>
<li>Download the .zip archive <a href="https://github.com/pennatil/Analysis-Notes/archive/master.zip">here</a></li>
<li>Unzip it, you will find a folder named "Notes", open it</li>
<li>Look for a PDF file named "main.pdf". Move it and rename it if you like</li>
<li>You can now delete the "Notes" folder</li>
</ol>
<li>Typeset (Build) it yourself from source. This is in order to have the latest version available, kind of like beta for software. (WARNING: MIGHT CONTAIN ERRORS IN THE TEXT)</li>
<ol><li>Take a look at the <a href="#Building">Building</a> section </li></ol>
</ul>





Contributing
============

There are essentially two ways of contributing to the notes:
<ol>
	<li>Correcting mistakes you find in the notes</li>
	<ul>
		<li>If you have no experience with LaTex or GitHub:</li>
			<ol>
				<li>Make sure you have a GitHub account, otherwise create one. Please use the same name as your ETHZ account, makes my life much easier if I have to contact you.</li>
				<li>On the right side of this page, click on the "Issues" tab</li>
				<li>Check if no one else has posted the same Issue. If no one has, open a new issue, stating:</li>
					<ul>
						<li>Chapter + Page Number</li>
						<li>Issue found, plus the eventual correction(s)</li>
					</ul>
				<li>Send the Issue, I will probably just close the Issue and send you a message or email once I have corrected the problem.</li>
			</ol>
			
		<li>If you are familiar with Latex and GitHub:</li>
			<ol>
				<li>Fork the repo. Help <a href="https://help.github.com/articles/fork-a-repo">here</a>. </li>
				<li>Make the changes, and commit them to your forked repo. Make sure to add detailed comments explaining what you changed, makes my life a lot easier when merging!</li>
				<li>Once you are done, request a Merge. Help <a href="https://help.github.com/articles/using-pull-requests">here</a>. </li>
			</ol>
	</ul>
<li>Typing up what is let of the notes</li>
<ul><li>Only for people familiar with LaTex and GitHub. In this case, <a href="mailto:pennatil@student.ethz.ch?Subject=I%20Want%20to%20help!">contact me</a></li></ul>
</ol>

<a name="Building"></a>
Building
========
This is only recommended to people with experience with LaTex, since the files might still contain bugs and errors that have to be ironed out. I will nto answer emails asking for help if the files do not build! If you are not sure, just use the PDF inside the .zip archive (Take a look at [Getting the material](#Getting the material)).
<ol>
<li>Make sure you have a working Tex distribution installed on your system. If you don't:</li>
<ul><li>Mac OS: <a href="http://tug.org/mactex/">MacTeX</a></li>
<li>Windows: <a href="http://miktex.org/download">MiKTeX</a> or <a href="https://www.tug.org/texlive/acquire-netinstall.html">TexLive</a> (recommended)
<li>Linux: <a href="https://www.tug.org/texlive/quickinstall.html">TexLive</a></li>
</ul>
<li>Download the master Branch <a href="https://github.com/pennatil/Analysis-Notes/archive/master.zip">here</a>, and unzip it. 
<ul>
<li>If you want to use a program with a GUI:</li>
<ol>
<li>Navigate in the folder, and open "main.tex" using TexWorks (Right-click->open with...)</li>
<li>On the top left, select "pdfLaTex" from the dropdown menu</li>
<li>Click on the green arrow, this will start the building process. Repeat this step at least 2 times!!</li>
<li>Navigate to the Notes folder, you will find a PDF file named "main.pdf". Move it and rename it wherever you like.</li>
</ol>
<li>If you want to use the terminal:</li>
<ol>
<li><code>cd path/to/your/folder/</code></li>
<li><code>latex main.tex</code></li>
<li><code>pdflatex main.tex</code> Repeat at least 2 times! (3 recommended)</li>
</ol>
</ol>


