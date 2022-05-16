\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gost-7-32}[2022/01/28 GOST 7.32-2017]

%
% Supported font sizes: 12pt, 14pt
%
\DeclareOption{12pt}{\PassOptionsToClass{\CurrentOption}{extarticle}}
\DeclareOption{14pt}{\PassOptionsToClass{\CurrentOption}{extarticle}}

\ProcessOptions\relax

%
% Set A4 paper format
%
\LoadClass[a4paper]{extarticle}

%
% Use 1.5 line spacing
%
\RequirePackage{setspace}
\spacing{1.5}

%
% First paragraph indentation
%
\RequirePackage{indentfirst}
\setlength{\parindent}{12.5mm}

%
% Page margin
%
\RequirePackage[
    left=3cm,
    right=1cm,
    top=2cm,
    bottom=2cm
]{geometry}

%
% Use russian language
%
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8]{inputenc} % Warning: inputenc package ignored with utf8 based engines.
\RequirePackage[english, russian]{babel}

%
% gost-7-32 packages
%
\RequirePackage{gost-7-32-headings}
\RequirePackage{gost-7-32-toc}
\RequirePackage{gost-7-32-lists}
\RequirePackage{gost-7-32-bibliography}
