%
% Copyright 2013 Emerson Max de Medeiros Silva
%
% This file is part of tccbsi.
%
% tccbsi is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% tccbsi is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with tccbsi.  If not, see <http://www.gnu.org/licenses/>.
%

% Identificação da classe.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tccbsi}[2013/02/19 v0.1 TCC BSI]

% Declaração das opções da classe.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions\relax

% Classe principal e carregamento de pacotes
\LoadClass[12pt,oneside,a4paper,article]{abntex2}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
\RequirePackage[alf]{abntcite}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{hyperref}
\RequirePackage{mathptmx}
\RequirePackage{amsfonts}
\RequirePackage{makeidx}
\RequirePackage{nomencl}
\RequirePackage{enumitem}
\RequirePackage{thmtools}
\RequirePackage{indentfirst}

% Adição de alguns comandos para a capa
\providecommand{\imprimircentro}{}
\newcommand{\centro}[1]{\renewcommand{\imprimircentro}{#1}}

\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Adição de comandos para citação sem precisar ciar o nome do autor
\providecommand{\citenonameref}[1]{(\citeauthor{{#1}}, \citeyear{{#1}})}

\providecommand{\sigla}[2]{\nomenclature{{#1}}{#2}{#2} ({#1})}

% Definindo alguns macros com um valor padrão
\local{Caicó -- RN}
\instituicao{Universidade Federal do Rio Grande do Norte}
\centro{Centro de Ensino Superior do Seridó}
\departamento{Departamento de Ciências Exatas e Aplicadas}
\curso{Programa de Graduação em Sistemas de Informação}

% Redefinição do modelo base do abnTeX2 e algumas configurações usadas pelo BSI.
% =============================================================================

% Definindo o espaçamento entre siglas.
\setlength{\nomitemsep}{-\parsep}

% Tamanho do recuo do paragrafo.
\setlength{\parindent}{2cm}

% Espaçamento entre paragrafos.
\setlength{\parskip}{\lineskip}

% Definindo espaçamento padrão para 1.5cm
\setSpacing{1.5}

% Profundidade do contador de seções, subseções, etc.
\settocdepth{subparagraph}

% Espaçamento das seções para o texto.
\setaftersecskip{\onelineskip}
\setaftersubsecskip{\onelineskip}
\setaftersubsubsecskip{\onelineskip}
\setafterparaskip{\onelineskip}
\setaftersubparaskip{\onelineskip}

% Redefinindo a pontuação das seções e subseções.
\renewcommand{\thechapter}{}
\renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesubsection}{\thesection\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}.}
\renewcommand{\theparagraph}{\thesubsubsection\arabic{paragraph}.}
\renewcommand{\thesubparagraph}{\theparagraph\arabic{subparagraph}.}

% Redefinindo tamanho e formato da fonte para o comando \section, \subsection,
% etc.
\renewcommand{\ABNTEXchapterfont}{\bfseries\fontfamily{\familydefault}\selectfont}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
\renewcommand{\ABNTEXsectionfont}{\bfseries\fontfamily{\familydefault}\fontseries{\familydefault}\selectfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

% Renomeando a página de siglas.
\renewcommand{\nomname}{Lista de abreviaturas e siglas}

% Configuração do estilo da bibliografia.
\addto\captionsbrazil{%
    \renewcommand{\contentsname}{\textbf{SUMÁRIO}}
    \renewcommand{\bibname}{REFER\^ENCIAS BIBLIOGRÁFICAS}
}
\renewcommand{\bibsection}{\section*{\bibname}}

% Redefine a capa padrão do abnTeX2
%\renewenvironment{capa}{\begin{titlingpage}}{\end{titlingpage}}
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \includegraphics[width=0.15\textwidth]{image/brasao_ufrn}\\
    {\MakeUppercase{\imprimirinstituicao}}\\
    {\MakeUppercase{\imprimircentro}}\\
        {\MakeUppercase{\imprimirdepartamento}}\\
        {\MakeUppercase{\imprimircurso}}\\
    \vspace*{3cm}
    {\MakeUppercase{\imprimirautor}}\\
    \vspace*{3.5cm}
    {\ABNTEXchapterfont\MakeUppercase{\imprimirtitulo}}
    \vspace*{\fill}

    {\imprimirlocal}\\
    {\imprimirdata}
  \end{capa}
}

% Redefine a folha de rosto padrão do abnTeX2
\makeatletter
\renewcommand{\folhaderostocontent}{
  \begin{center}

    \vspace*{0.08cm}
    {\MakeUppercase{\imprimirautor}}

    \vspace*{\fill}\vspace*{\fill}
    {\ABNTEXchapterfont\MakeUppercase{\imprimirtitulo}}
    \vspace*{\fill}

    \abntex@ifnotempty{\imprimirpreambulo}{%
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
         \imprimirpreambulo\\

         {\ABNTEXchapterfont\imprimirorientadorRotulo\ABNTEXsectionfont~\imprimirorientador\par}
         \abntex@ifnotempty{\imprimircoorientador}{%
            {\ABNTEXchapterfont\imprimircoorientadorRotuloo\ABNTEXsectionfont~\imprimircoorientador}%
         }%
       \end{minipage}%
       \vspace*{\fill}
    }%

    \vspace*{\fill}

    {\imprimirlocal}\\
    {\imprimirdata}

  \end{center}
}
\makeatother

% Define um estilo de cabeçalho
\makepagestyle{estilocabecalho}
\makeevenhead{estilocabecalho}{}{}{\thepage}
\makeoddhead{estilocabecalho}{}{}{\thepage}

