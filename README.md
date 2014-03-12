Analysis-Notes
==============
This repo contains all the handwritten notes from Professor Imamoglu's Analysis I/II class for CS at ETHZ. 

Getting the material
====================
Download the master branch [here](https://github.com/pennatil/Analysis-Notes/archive/master.zip "Master Archive"). Once done, unzip it and you will get a the latest PDF. The PDF might not be as up to date as the source files, if you wish to have the latest version, you have to build it yourself. Look at the Building section. 

File Hierarchy
==============
main.tex is the main file to compile, from there all of the chapters are included using the \input{''name of file''} command. Packages are included as well, and can be found in the file Packages.tex. 

Building
========
This is only for people familiar with LaTex. If you have never used it before, just use the PDF included in the .zip archive!

First of all make sure you have a working LaTex distribution installed on your system. If you don't just google ''latex ''+ your OS, download and install. 
Download the master Branch, unzip it and open the file Packages.tex. Make sure that you have all of these packages installed.
<ul>
<li>If you use the terminal, navigate to the folder and build main.tex</li>
<li>If you use an ''IDE'', just open main.tex and create a pdf using the export button (most of them have one)</li>
</ul>
Contributing
============
If you wish to contribute to the notes, there are two ways:
<ul>
<li>If you have no experience with LaTex or GitHub:
<ol>
<li>Make sure you have a GitHub account</li>
<li>On the right side of this page, click on the "Issues" tab</li>
<li>Open a new issue, stating:
<ul>
<li>Chapter + Page Number</li>
<li>Issue found, plus the eventual correction</li>
</ul>
<li>Send the Issue, I will probably just close the Issue and send you a message or email.
</ol>
<li>If you are familiar with Latex and GitHub:
<ol>
<li>Fork the repo. Help <a href="https://help.github.com/articles/fork-a-repo">here</a>. </li>
<li>Make the changes, and commit them to your forked repo. Make sure to add detailed comments explaining what you changed, makes my life a lot easier when merging!</li>
<li>Once you are done, request a Merge. Help <a href="https://help.github.com/articles/using-pull-requests">here</a>. </li>
</ol>
<li>I will try to merge it as soon as possible, and once done I will probably send you a message or email</li>
</ol>
</ul>
Once you have used one of these methods, I will try to fix the problem/merge your solution as soon as I can!

 
