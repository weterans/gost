\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{gost-7-32}[2022/01/28 GOST 7.32-2017]

%
% 14pt font size with A4 paper format
%
\LoadClass[14pt, a4paper]{extarticle}

%
% Times New Roman font
%
\RequirePackage{fontspec}
\setmainfont{Times New Roman}

%
% Use 1.5 line spacing
%
\RequirePackage{setspace}
\spacing{1.5}

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
\RequirePackage[utf8]{inputenc} % Warning: inputenc package ignored with utf8 based engines.
\RequirePackage[english, russian]{babel}

\RequirePackage{indentfirst}
\setlength{\parindent}{12.5mm}

%
% gost-7-32 packages
%
\RequirePackage{gost-7-32-headings}
\RequirePackage{gost-7-32-toc}
\RequirePackage{gost-7-32-lists}