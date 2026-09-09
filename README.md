# LaTeX Template
Makefile providing a environment to compile LaTeX documents to PDF.

## Prerequisits
- `GNU Make`
- `latexmk`

## Structure
```
├── src				: .tex files
└── tex
    ├── classes		: .cls files
    └── packages	: .sty files
```

## How to use this repo as a template ?
Create a new repo on your PC, then use the following commands to download this repo as zip, and then unzip it.
```shell
curl -L -o repo.zip https://github.com/TotemaM/latex-env/archive/refs/heads/master.zip
unzip repo.zip
```