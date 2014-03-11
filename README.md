Analysis-Notes
==============
This repo contains all the handwritten notes from Professor Imamoglu's Analysis I/II class for CS at ETHZ. 

Getting the material
====================
Download the master branch, you will get a .zip file containing the latest PDF. The PDF might not be as up to date as the source files, if you wish to have the latest version, you have to build it yourself. Look at the Building section. 

File Hierarchy
==============
main.tex is the main file to compile, from there all of the chapters are included using the \input{''name of file''} command. Packages are included as well, and can be found in the file Packages.tex. This was done so to be able to have multiple main files for different output results. 

Building
========
First of all make sure you have a working Tex distribiution installed on your system. If you don't just google ''latex ''+ you OS, download and install. 
Download the master Branch, unzip it and open the file Packages.tex. Make sure that you have all of these packages installed.
if you use the terminal, navigate to the folder and build main.tex. If you use an ''IDE'', just open main.tex and create a pdf.

Contributing
============
If you wish to contribute to the notes, there are two ways:
1. Fork the repo, make the changes, and then request a merge. Use this only if you are familiar with LaTex.
2. Open an issue by using the issues tab on the right of this page. This is recommended if you have no experience with LaTex.

 
