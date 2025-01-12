# GOST 7.32-2017 (ГОСТ 7.32-2017)

You can find GOST [here][1].

# Features

This `documentclass` is extremely easy to use.
Almost no configuration is needed.
All the default LaTeX commands stay the same but they have GOST style now.

- [x] Use default LaTeX commands
- [x] Add GOST section headers with automatic proper ToC formatting
- [x] Add GOST-style bibliography in 3 lines of code
- [ ] Automatic pages, figures and tables count for РЕФЕРАТ section
- [ ] Title page (you may use [this][2] for now)

# Installation

For all operating systems first clone this repository.

## Linux/macOS

### Automatic

Run `install.sh` and specify your profile file depending on the shell you use. For example, for `bash`:

```sh
./install.sh ~/.bashrc
```

### Manual

1. Clone or download this repository.

2. Add following lines to your `.zshrc`/`.bashrc`

```sh
export TEXINPUTS=/path/to/repository/GOST/src/gost-7-32/tex/latex:
export BSTINPUTS=/path/to/repository/GOST/src/gost-7-32/bibtex/bst:
```

## Windows

### MiKTeX

Go to `MiKTeX Console > Settings > Directories` and add the directory `src/gost-7-32` from this repository.

# Usage

## Enable the template

```tex
\documentclass[12pt]{gost-7-32}
```

Font size parameter is optional.
Default is `12pt`.
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

**Important!** You MUST add `language = {russian}` to each entry otherwise you will get encoding errors in `.bbl` file.

## Compilation

We recommend starting with the following Makefile:

```make
all:
	latexmk -g -output-directory=build -pdf main.tex

clear:
	rm -rf build
```

Modify to better suit your needs.

<!-- References -->

[1]: https://docs.cntd.ru/document/1200157208
[2]: https://github.com/weterans/mephi-title
