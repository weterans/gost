# GOST 7.32-2017 (ГОСТ 7.32-2017)

You can find GOST [here][1].

# Installation

1. Clone or download this repository.

2. Add following lines to your `.zshrc`/`.bashrc`

```bash
export TEXINPUTS=/path/to/repository/GOST/src/:
export BSTINPUTS=/path/to/repository/GOST/src/biblatex/:
```

# Usage

## Enable the template

```tex
\documentclass[12pt]{gost-7-32}
```

Fontsize parameter is optional.
Default is 12pt.
You may choose between `12pt` and `14pt`.

## Supported custom GOST section headings

|Keyword|Section name|
|-|-|
|`\introduction`|ВВЕДЕНИЕ|
|`\essay`|РЕФЕРАТ|
|`\definitions`|ОПРЕДЕЛЕНИЯ|
|`\abbreviations`|ОБОЗНАЧЕНИЯ И СОКРАЩЕНИЯ|
|`\defsabbrs`|ОПРЕДЕЛЕНИЯ, ОБОЗНАЧЕНИЯ И СОКРАЩЕНИЯ|
|`\conclusion`|ЗАКЛЮЧЕНИЕ|
|`\references`|СПИСОК ИСПОЛЬЗОВАННЫХ ИСТОЧНИКОВ|
|`\appendix{<name>}`|ПРИЛОЖЕНИЕ `<letter>`. `<name>`|

## Bibliography

Add bibliography with following lines:

```tex
\references
\bibliographystyle{ugost2008}
\bibliography{<bibliography_file>}
```

Bibliography file entry examples:

```bib
@online {bib:rbk2020,
    title = {Число дел о мошенничестве рекордно возросло на фоне пандемии},
    year = {2020},
    url = {https://www.rbc.ru/society/31/08/2020/5f48ea169a79477e21e25d9d},
    urldate = {01.19.2022},
    language = {russian}
}

@inproceedings {bib:lei2007,
    author = {Lei, Howard and Mirghafori, Nikki},
    year = {2007},
    month = {08},
    pages = {746-749},
    title = {Word-conditioned HMM supervectors for speaker recognition},
    volume = {1},
    doi = {10.21437/Interspeech.2007-139},
    language = {russian}
}
```

**Important!** You MUST add `language = {russian}` to each entry.

## Compilation

We recommend starting with the following Makefile:

```make
all:
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clear:
	rm main.aux
	rm main.bbl
	rm main.blg
	rm main.out
	rm main.log
	rm main.pdf
	rm main.toc
	rm sections/*.aux
```

Modify to better suit your needs.
Multiple `pdflatex` commands are needed to compile bibliography and table of contents.

<!-- References -->

[1]: https://docs.cntd.ru/document/1200157208
