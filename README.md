# LaTeX Template
LaTeX compile environment using pdflatex command on Linux.

## Prerequisits

- texlive (pdflatex command)

## Compile LaTeX to PDF

```shell
chmod +x build.sh
# Build a given file :
./build.sh path/to/file.tex
# Search for all .tex files inside files folder, and build them :
./build.sh
```

## Class folder
The class folder is used to place custom latex document classes and their associated style file.
It is part of the `build.sh` script to use the custom latex document classes contained inside the *class* folder to compile the .tex files.
> By default the folder contains a `note.cls` and a `note.sty` file. Those are the one i use for my notes, and i push them to make the folder available on the repo. You can remove the files or even the folder if you don't use custom classes.

## How to use this repo as a template ?
Create a new repo on your PC, then use the following commands to download this repo as zip, and then unzip it.
```shell
# Download zipped last version of this repository
curl -L -o repo.zip https://github.com/TotemaM/latex-env/archive/refs/heads/master.zip
# Unzip the downloaded zip folder
unzip repo.zip
```